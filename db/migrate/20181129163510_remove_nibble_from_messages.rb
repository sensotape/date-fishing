class RemoveNibbleFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :messages, :nibble
  end
end
