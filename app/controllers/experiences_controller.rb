class ExperiencesController < ApplicationController
  def index
    @experiences = policy_scope(Experience)
    authorize @experiences
  end

  def show
    @experience = Experience.find(params[:id])
    authorize @experience
  end
end
