FactoryGirl.define do

  factory :user do
    user_id "12657"
    provider "strava"
    token ENV["CLIENT_ID"]
    first_name "Colin"
    last_name "Osborn"
    email "Colin.Osborn@gmail.com"
    profile_picture "https://2.bp.blogspot.com/-5dP1CqrdLcg/Via0CvWLcbI/AAAAAAAAFG8/Px5XW0UL8-M/s1600/21320_10153156759677065_4259148829556330215_n.jpg"
    city "Carbondale"
    state "Colorado"
    sex "M"
    ftp 310
    weight 62
    bikes "Giant Anthem Advanced"
  end
end
