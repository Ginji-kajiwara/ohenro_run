# frozen_string_literal: true

class CreateTemples < ActiveRecord::Migration[6.1]
  def change
    create_table :temples do |t|
      t.string :name, null: false
      t.float :distance_from_start, null: false
      t.integer :prefectures, null: false
      t.string :address, null: false
      t.text :description

      t.timestamps
    end
  end
end
