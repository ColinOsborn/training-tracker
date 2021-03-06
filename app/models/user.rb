class User < ApplicationRecord
  has_many :goals
  has_many :rides
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :user_id, presence: true
  validates :token, presence: true
  validates :city, presence: true
  validates :state, presence: true


  def self.find_or_create_from_auth(auth)
    user = User.find_or_create_by(provider: auth[:provider], user_id: auth[:uid])
    user_hash(user, auth)
    user.save
    user
  end

  def self.user_hash(user, auth)
    user[:token] =             auth[:credentials][:token]
    user[:provider] =          auth[:provider]
    user[:name] =              auth[:info][:name]
    user[:first_name] =         auth[:info][:first_name]
    user[:last_name] =          auth[:info][:last_name]
    user[:email] =             auth[:info][:email]
    user[:profile_picture] =   auth[:info][:profile]
    user[:city] =              auth[:extra][:raw_info][:city]
    user[:state] =             auth[:extra][:raw_info][:state]
    user[:sex] =               auth[:extra][:raw_info][:sex]
    user[:weight] =            auth[:extra][:raw_info][:weight]
    user[:ftp] =               auth[:extra][:raw_info][:ftp]
    user[:bikes] =             auth[:info][:bikes]
  end
end
