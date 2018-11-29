class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = " \
        experiences.title @@ :query \
        OR experiences.category @@ :query \
        OR experiences.location @@ :query \
        OR experiences.description @@ :query \
      "
      @experiences = policy_scope(Experience).where(sql_query, query: "%#{params[:query]}%")
      @experiences = @experiences.order('start_date')
      authorize @experiences
    else
      @experiences = policy_scope(Experience)
      authorize @experiences
    end
  end

  def new
    @experience = current_user.experiences.new
    authorize @experience
  end

  def create
    @experience = current_user.experiences.new(permitted_attributes(Experience))
    authorize @experience
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render '_form_new_experience'
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

  private

  def set_experience
    @experience = Experience.find(params[:id])
    authorize @experience
  end
end
