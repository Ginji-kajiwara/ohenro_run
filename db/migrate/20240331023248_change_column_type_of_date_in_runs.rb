class ChangeColumnTypeOfDateInRuns < ActiveRecord::Migration[6.1]
  def change
    change_column :runs, :date, :datetime, null: true
    rename_column :runs, :date, :start_time
  end
end
