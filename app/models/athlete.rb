class Athlete < ApplicationRecord

  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.uid                = auth_info.uid
      new_user.firstname          = auth_info.extra.raw_info.firstname
      new_user.lastname           = auth_info.extra.raw_info.lastname
      new_user.oauth_token        = auth_info.credentials.token
      new_user.oauth_token_secret = auth_info.credentials.secret
  end
end
