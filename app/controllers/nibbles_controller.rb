class NibblesController < ApplicationController
  def create
    @experience = policy_scope(Experience).find(params[:experience_id])
    @nibble = @experience.nibbles.new
    @nibble.owner = @experience.user
    @nibble.interested = current_user
    @nibble.messages << Message.new(nibble_message_params)
    authorize @nibble
    if @nibble.save
      redirect_to experience_path(@experience)
      flash[:notice] = "You just nibbled #{@nibble.owner.first_name} 😜"
    else
      redirect_to experience_path(@experience)
      flash[:alert] = "Oops! Something went wrong 😔 Please try again later"
    end
  end

  private

  def nibble_message_params
    params.require(:nibble).require(:messages).permit(:body, :recipient_id, :sender_id)
  end
end
