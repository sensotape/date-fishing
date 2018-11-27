class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :gender, :string, null: false
    add_column :users, :seeking, :string, null: false
    add_column :users, :bio, :text
    add_column :users, :birthday, :datetime, null: false
  end
end
