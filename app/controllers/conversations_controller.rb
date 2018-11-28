class ConversationsController < ApplicationController
  def inbox
    authorize current_user
  end
end
