class CreateAthletes < ActiveRecord::Migration[5.0]
  def change
    create_table :athletes do |t|
      t.string :firstname
      t.string :lastname
      t.string :oauth_token
      t.string :oauth_token_secret
      t.integer :uid
      t.timestamps
    end
  end
end
