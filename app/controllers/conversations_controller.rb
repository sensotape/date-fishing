class ConversationsController < ApplicationController
  def inbox
    authorize current_user
    set_conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
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
end
