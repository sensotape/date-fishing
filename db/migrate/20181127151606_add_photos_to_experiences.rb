class AddPhotosToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :photos, :json
  end
end
