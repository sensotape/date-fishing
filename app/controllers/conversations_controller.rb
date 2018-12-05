class ConversationsController < ApplicationController
  def inbox
    authorize current_user
    set_conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
    mark_messages_as_read
    authorize @conversation
  end

  private

  def set_conversations
    @conversations = []
    Conversation.all.each do |conversation|
      if conversation.nibble.owner == current_user || conversation.nibble.interested == current_user
        @conversations << conversation
      end
    end
  end

  def mark_messages_as_read
    messages = @conversation.messages.where(recipient: current_user)
    messages.each { |message| message.read! }
  end
end
