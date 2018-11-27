class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title, null:false
      t.string :category, null:false
      t.string :location
      t.float :latitude
      t.float :longitude
      t.text :description, null:false
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
