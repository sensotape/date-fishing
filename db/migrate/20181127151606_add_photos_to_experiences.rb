class AddPhotosToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :photo, :json
  end
end
