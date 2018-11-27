class CreateNibbles < ActiveRecord::Migration[5.2]
  def change
    create_table :nibbles do |t|
      t.string :status, null: false, default: 'pending'
      t.boolean :allowed, null: false, default: false
      t.references :interested
      t.references :owner
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
