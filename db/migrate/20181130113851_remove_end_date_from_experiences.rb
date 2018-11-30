class RemoveEndDateFromExperiences < ActiveRecord::Migration[5.2]
  def change
    remove_column :experiences, :end_date
  end
end
