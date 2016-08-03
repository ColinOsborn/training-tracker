class AddMilesFieldToGoalModel < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :miles, :integer
  end
end
