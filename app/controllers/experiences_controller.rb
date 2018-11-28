class ExperiencesController < ApplicationController

  def show
    @experience = Experience.find(params[:id])
    authorize @experience
  end
end
