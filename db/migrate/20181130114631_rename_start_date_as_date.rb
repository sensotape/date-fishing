class RenameStartDateAsDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :experiences, :start_date, :date
  end
end
