class User < ApplicationRecord

  def self.find_or_create_from_auth(auth)
    user = User.find_by(provider: auth[:provider], user_id: aith[:uid])
    user_hash(user, auth)
    user.save
    return user
  end

  def user_hash(user, auth)
    user.token =            auth[:credentials][:token]
    user.firstname =        auth[:info][:firstname]
    user.lastname =         auth[:info][:lastname]
    user.email =            auth[:info][:email]
    user.profile_picture =  auth[:info][:profile_picture]
    user.city =             auth[:info][:city]
    user.state =            auth[:info][:state]
    user.sex =              auth[:info][:sex]
    user.height =           auth[:info][:height]
    user.weight =           auth[:info][:weight]
    user.ftp =              auth[:info][:ftp]
    user.bikes =            auth[:info][:bikes]
  end

end
