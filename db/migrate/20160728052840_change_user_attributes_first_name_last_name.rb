class ChangeUserAttributesFirstNameLastName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :firstname, :first_name
    rename_column :users, :lastname, :last_name
    remove_column :users, :height
    remove_column :users, :oauth_token_secret
  end
end
