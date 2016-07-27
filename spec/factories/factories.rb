FactoryGirl.define do

  factory :user do
    user_id 12657
    provider "strava"
    token ENV["USER_TOKEN"]
    firstname "Colin"
    lastname "Osborn"
    email "Colin.Osborn@fake.com"
    profile_picture "https://2.bp.blogspot.com/-5dP1CqrdLcg/Via0CvWLcbI/AAAAAAAAFG8/Px5XW0UL8-M/s1600/21320_10153156759677065_4259148829556330215_n.jpg"
    city "Carbondale"
    state "Colorado"
    sex "M"
    fpt 310
    weight 62
    height 68
    bikes "Giant Anthem Advanced"
  end
end
