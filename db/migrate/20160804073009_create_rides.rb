class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :name
      t.string :description
      t.float :distance
      t.integer :moving_time
      t.float :total_elevation_gain
      t.string :start_date

      t.timestamps
    end
  end
end
