class NibblesController < ApplicationController
  def create
    @experience = policy_scope(Experience).find(params[:experience_id])
    @nibble = @experience.nibbles.new
    @nibble.owner = @experience.user
    @nibble.interested = current_user
    authorize @nibble
    if @nibble.save
      redirect_to experience_path(@experience)
      flash[:notice] = "You just nibbled #{@nibble.owner.first_name}!"
    else
      redirect_to experience_path(@experience)
      flash[:alert] = "Ooops! Something went wrong. Try again later."
    end
  end
end
