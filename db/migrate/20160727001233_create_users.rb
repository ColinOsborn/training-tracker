class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :provider
      t.string :token
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :profile_picture
      t.string :city
      t.string :state
      t.string :sex
      t.integer :ftp
      t.float :weight
      t.integer :height
      t.string :bikes

      t.timestamps
    end
  end
end
