class NibblesController < ApplicationController
  def create
    @experience = policy_scope(Experience).find(params[:experience_id])
    @nibble = @experience.nibbles.new
    @nibble.owner = @experience.user
    @nibble.interested = current_user
    authorize @nibble
    if @nibble.save
      @conversation = @nibble.conversations.create
      @message = @conversation.messages.create(nibble_message_params)
      redirect_to experiences_path
      flash[:notice] = "You just nibbled #{@nibble.owner.first_name} 😜"
    else
      redirect_to experience_path(@experience)
      flash[:alert] = "Oops! Something went wrong 😔 Please try again later"
    end
  end

  def update
    @experience = policy_scope(Experience).find(params[:experience_id])
    @nibble = policy_scope(Nibble).find(params[:id])
    authorize @nibble
    @nibble.status = params[:status]
    if @nibble.save
      redirect_to inbox_path
      flash[:notice] = "You've made your decision"
    else
      flash[:alert] = "Oops! Something went wrong 😔 Please try again later"
    end
  end

  def destroy
    @experience = policy_scope(Experience).find(params[:experience_id])
    @nibble = policy_scope(Nibble).find(params[:id])
    authorize @nibble
    @nibble.destroy
    redirect_to user_path(current_user)
  end

  private

  def nibble_message_params
    params.require(:nibble).require(:messages).permit(:body, :recipient_id, :sender_id)
  end
end
