class NibblesController < ApplicationController
  def create
    @experience = policy_scope(Experience).find(params[:experience_id])
    @nibble = @experience.nibbles.new
    @nibble.owner = @experience.user
    @nibble.interested = current_user
    authorize @nibble
    if @nibble.save
      Notification.create(recipient: @nibble.owner, user: current_user, action: "nibbled", notifiable: @nibble.owner)
      @conversation = @nibble.conversations.create
      @message = @conversation.messages.create(nibble_message_params)
      Notification.create(recipient: @nibble.owner, user: current_user, action: "messaged", notifiable: @nibble.owner)
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
    @nibbles = @experience.nibbles.reject { |nibble| nibble == @nibble }
    if @nibble.save
      Notification.create(recipient: @nibble.interested, user: current_user, action: "updated", notifiable: @nibble.interested)
      if params[:status] == 'accepted'
        @nibbles.each do |nibble|
          nibble.status = 'declined'
          nibble.save
        end
        # respond_to do |format|
        #   format.js { render partial: 'shared/date_modal.js.erb' }
        # end
        flash[:notice] = "You've got a date ❤️"
      elsif params[:status] == 'declined'
        flash[:notice] = "No worries! There's plenty more fish in the sea."
      end
      redirect_back(fallback_location: root_path)
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
