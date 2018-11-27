class CreateBlockedUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :blocked_users do |t|
      t.references :user, foreign_key: true
      t.references :blocked

      t.timestamps
    end
  end
end
