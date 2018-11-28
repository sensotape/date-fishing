class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :picture
      t.references :user, foreign_key: true
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
