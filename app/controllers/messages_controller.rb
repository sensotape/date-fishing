class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:id])
    @message = @conversation.messages.new(message_params)
    @message.sender = User.find(params[:message][:sender_id].to_i)
    @message.recipient = who_is_recipient
    authorize @message
    if @message.save
      Notification.create(recipient: @message.recipient, user: @message.sender, action: "messaged", notifiable: @message.recipient)
      respond_to do |format|
        format.html { redirect_to conversation_path(@conversation) }
        format.js # create.js.erb
      end
    else
      respond_to do |format|
        format.html { render "conversations/show" }
        format.js
      end
    end
  end

  private

  def who_is_recipient
    sender = @conversation.messages.first.sender
    recipient = @conversation.messages.first.recipient
    return @message.sender == sender ? recipient : sender
  end

  def message_params
    params.require(:message).permit(:body, :sender_id)
  end
end
