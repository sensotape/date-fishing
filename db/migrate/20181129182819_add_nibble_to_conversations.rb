class AddNibbleToConversations < ActiveRecord::Migration[5.2]
  def change
    add_reference :conversations, :nibble, foreign_key: true
  end
end
