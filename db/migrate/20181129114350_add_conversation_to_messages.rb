class AddConversationToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :conversation
  end
end
