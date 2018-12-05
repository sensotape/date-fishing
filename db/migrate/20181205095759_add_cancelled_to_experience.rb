class AddCancelledToExperience < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :cancelled, :boolean, default: false
  end
end
