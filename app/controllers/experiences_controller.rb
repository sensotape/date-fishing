class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # search bar
    if params[:query].present?
      @experiences = policy_scope(Experience).where(sql_query, query: "%#{params[:query]}%")
      @experiences = @experiences.order('start_date')

    # filters
    else
      @experiences = policy_scope(Experience)
      save_filters
      apply_filters
    end
    
    @experiences = @experiences.where("date >= ?", Time.zone.now.beginning_of_day)
    unless current_user.nil?
      @experiences = @experiences.joins(:user).where(
        "users.id != :id and users.gender = :gender and users.seeking = :seeking", 
        {id: current_user.id, gender: current_user.seeking, seeking: current_user.gender}
      )
    end
    authorize @experiences
  end

  def new
    @experience = current_user.experiences.new
    @experience.photos.build
    authorize @experience
  end

  def create
    @experience = current_user.experiences.new(permitted_attributes(Experience))
    authorize @experience
    if @experience.save
      redirect_to experience_path(@experience)
      params[:experience][:photos_attributes]["0"][:picture].each do |pic|
        Photo.create(user: current_user, experience: @experience, picture: pic)
      end
    else
      redirect_to experiences_path
    end
  end

  def show
    @markers = Experience.where(id: params[:id]).map do |experience|
      {
        lng: experience.longitude,
        lat: experience.latitude
      }
    end
    @nibble = @experience.nibbles.new
    @nibble.owner = @experience.user
    @nibble.interested = current_user
    authorize @nibble
  end

  def edit;end

  def update
    if @experience.update_attributes(permitted_attributes(@experience))
      redirect_to user_path(current_user)
    else
      render 'edit-experience'
    end
  end

  def destroy
    # @experience.destroy
    @experience.nibbles.each do |nibble|
      nibble.status = 'cancelled'
      nibble.save
    end
    @experience.cancelled = true
    if @experience.save
      redirect_back(fallback_location: root_path)
      flash[:notice] = "Date succesfuly cancelled"
    else
      flash[:alert] = "Oops! Something went wrong 😔 Please try again later"
    end
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
    authorize @experience
  end

  def sql_query
    " \
      experiences.title @@ :query \
      OR experiences.category @@ :query \
      OR experiences.location @@ :query \
      OR experiences.description @@ :query \
    "
  end

  def save_filters
    @categories = params[:category]
    @date = calculate_date
  end

  def apply_filters
    @experiences.where!(category: @categories) if @categories
    @experiences.where!(date: @date[0]..@date[-1]) if @date
  end

  def calculate_date
    case params[:date]
    when 'today' then [Date.today]
    when 'tomorrow' then [Date.tomorrow]
    when 'next weekend' then next_weekend
    when 'custom range' then custom_range
    end
  end

  def next_weekend
    friday = Date.parse('Friday')
    sunday = Date.parse('Sunday')
    sunday += 7 if sunday < friday
    [friday, sunday]
  end

  def custom_range
    date_range = params[:range][:date_range].split
    [date_range.first, date_range.last]
  end
end
