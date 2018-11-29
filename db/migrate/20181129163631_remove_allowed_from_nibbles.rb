class RemoveAllowedFromNibbles < ActiveRecord::Migration[5.2]
  def change
    remove_column :nibbles, :allowed
  end
end
