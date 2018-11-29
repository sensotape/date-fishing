class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

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
    authorize @experiences
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
  end

  def apply_filters
    @experiences.where!(category: params[:category]) if params[:category]
    @experiences.where!(price: params[:min]..params[:max]) if params[:min] && params[:max]
  end
end
