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

  def show
    @markers = Experience.where(id: params[:id]).map do |experience|
      {
        lng: experience.longitude,
        lat: experience.latitude
      }
    end
  end

  def set_experience
    @experience = Experience.find(params[:id])
    authorize @experience
  end
end
