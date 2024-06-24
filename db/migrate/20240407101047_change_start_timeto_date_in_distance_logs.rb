# frozen_string_literal: true

class ChangeStartTimetoDateInDistanceLogs < ActiveRecord::Migration[6.1]
  def change
    change_column :distance_logs, :start_time, :date
  end
end
