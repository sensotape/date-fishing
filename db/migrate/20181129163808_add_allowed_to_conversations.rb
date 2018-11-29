class AddAllowedToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :allowed, :boolean, default: false
  end
end
