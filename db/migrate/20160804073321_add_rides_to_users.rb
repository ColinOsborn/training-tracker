class AddRidesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :rides, :user, foreign_key: true
  end
end
