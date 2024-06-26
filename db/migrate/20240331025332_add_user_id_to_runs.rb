# frozen_string_literal: true

class AddUserIdToRuns < ActiveRecord::Migration[6.1]
  def change
    add_reference :runs, :user, null: false, foreign_key: true
  end
end
