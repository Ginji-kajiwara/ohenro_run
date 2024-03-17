class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.float :distance
      t.date :date

      t.timestamps
    end
  end
end
