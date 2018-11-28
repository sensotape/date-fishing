class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
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
