class User < ApplicationRecord

  def self.find_or_create_from_auth(auth)
    user = User.find_or_create_by(provider: auth[:provider], user_id: auth[:uid])
    user_hash(user, auth)
    byebug
    user.save
    user
  end

  def self.user_hash(user, auth)
    # user.token =            auth[:credentials][:token]
    user[:firstname] =        auth[:info][:first_name]
    user[:lastname] =         auth[:info][:last_name]
    user[:email] =            auth[:info][:email]
    user[:profile_picture] =  auth[:info][:profile_picture]
    user[:city] =             auth[:extra][:raw_info][:city]
    user[:state] =            auth[:extra][:raw_info][:state]
    user[:sex] =              auth[:extra][:raw_info][:sex]
    user[:height] =           auth[:info][:height]
    user[:weight] =           auth[:info][:weight]
    user[:ftp] =              auth[:extra][:raw_info][:ftp]
    user[:bikes] =            auth[:info][:bikes]
  end

end
