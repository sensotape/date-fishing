class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :nibble, foreign_key: true
      t.references :sender
      t.references :recipient
      t.text :body, null: false
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
