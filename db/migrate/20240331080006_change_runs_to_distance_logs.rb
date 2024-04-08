class ChangeRunsToDistanceLogs < ActiveRecord::Migration[6.1]
  def change
    rename_table :runs, :distance_logs
  end
end
