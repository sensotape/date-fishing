class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  def index
    @experiences = policy_scope(Experience)
    authorize @experiences
  end

  def new
    @experience = current_user.experiences.new
    authorize @experience
  end

  def create
    @experience = current_user.experiences.new(
      permitted_attributes(Experience))
    authorize @experience
    if @experience.save
      redirect_to experiences_path
    else
      render 'new'
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
