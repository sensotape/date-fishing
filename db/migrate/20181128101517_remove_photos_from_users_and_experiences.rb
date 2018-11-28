class RemovePhotosFromUsersAndExperiences < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :photos
    remove_column :experiences, :photos
  end
end
