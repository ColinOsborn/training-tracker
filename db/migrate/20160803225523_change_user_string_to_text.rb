class ChangeUserStringToText < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :profile_picture, :text
  end
end
