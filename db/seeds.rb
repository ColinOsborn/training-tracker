

# user =
#   {"provider"=>"strava",
#  "uid"=>"12657",
#  "info"=>{"name"=>"Calle Friberg", "first_name"=>"Calle", "last_name"=>"Friberg", "email"=>"mr_callefriberg@yahoo.se", "location"=>""},
#  "credentials"=>{"token"=> ENV['STRAVA_CLIENT_SECRET'], "expires"=>false},
#  "extra"=>
#   {"raw_info"=>
#     {"id"=>723518,
#      "username"=>"callefriberg",
#      "resource_state"=>3,
#      "firstname"=>"Calle",
#      "lastname"=>"Friberg",
#      "profile_medium"=>"https://dgalywyr863hv.cloudfront.net/pictures/athletes/723518/3571533/5/large.jpg",
#      "profile"=>"https://dgalywyr863hv.cloudfront.net/pictures/athletes/723518/3571533/5/large.jpg",
#      "city"=>"Sundbyberg",
#      "state"=>"Stockholms lan",
#      "country"=>"Sweden",
#      "sex"=>"M",
#      "premium"=>false,
#      "created_at"=>"2016-08-02T06:22:41Z",
#      "updated_at"=>"2016-08-02T04:16:28Z",
#      "follower_count"=>776,
#      "friend_count"=>92,
#      "athlete_type"=>1,
#      "measurement_preference"=>"feet",
#      "email"=>"mr_callefriberg@yahoo.se",
#      "weight"=>65,
#      "bikes"=>[{"id"=>"b26488667", "primary"=>true, "name"=>"Scott Spark 900", "resource_state"=>2, "distance"=>4853.2}]
#     }
#   }
# }
#
# User.create(user_id: 723518, provider: "strava", token: "2156ea214a4c6f8d8b121bfb99b66344dd9172b7", name: "Calle Friberg", first_name: "Calle", last_name: "Friberg", email: "mr_callefriberg@yahoo.se", profile_picture: "https://dgalywyr863hv.cloudfront.net/pictures/athletes/723518/3571533/5/large.jpg", city: "Sundbyberg", state: "Sweden", sex: "M", ftp: 350, weight: 68.03, bikes: "Scott Spark 900 RC", phone_number: "46736872691")
# User.create(user_id: 2483643, provider: "strava", token: "2256ea214a4c6f8d8b121bfb99b66344dd9172b7", name: "Emil Lindgren", first_name: "Emil", last_name: "Lindgren", email: "emil_lindgren@yahoo.se", profile_picture: "", city: "Säter", state: "Sweden", sex: "M", ftp: 350, weight: 62, bikes: " Allebike FS 27.5", phone_number: "46756872691")
# User.create(user_id: 119832, provider: "strava", token: "2356ea214a4c6f8d8b121bfb99b66344dd9172b7", name: "Russell Finsterwald", first_name: "Russell", last_name: "Finsterwald", email: "finsty@gmail.com", profile_picture: "https://dgalywyr863hv.cloudfront.net/pictures/athletes/119832/32787/5/large.jpg", city: "Colorado Springs", state: "Colorado", sex: "M", ftp: 350, weight: 67.85, bikes: "Scott Spark 900 RC", phone_number: "17193313337")
# User.create(user_id: 370256, provider: "strava", token: "2456ea214a4c6f8d8b121bfb99b66344dd9172b7", name: "Kalan Beisel", first_name: "Kalan", last_name: "Beisel", email: "kalan.beisel@gmail.com", profile_picture: "https://dgalywyr863hv.cloudfront.net/pictures/athletes/370256/76704/3/large.jpg", city: "Colorado Springs", state: "Colorado", sex: "M", ftp: 380, weight: 78, bikes: "Giant Anthem Advanced 0 29", phone_number: "17193313337")
# User.create(user_id: 175011, provider: "strava", token: "2556ea214a4c6f8d8b121bfb99b66344dd9172b7", name: "Sam Stevens", first_name: "Sam", last_name: "Stevens", email: "Sam.Stevens@gmail.com", profile_picture: "https://dgalywyr863hv.cloudfront.net/pictures/athletes/175011/275476/1/large.jpg", city: "Carbondale", state: "Colorado", sex: "M", ftp: 280, weight: 72, bikes: "Kona Process 140", phone_number: "19703798839")
# User.create(user_id: 188011, provider: "strava", token: "2656ea214a4c6f8d8b121bfb99b66344dd9172b7", name: "Darren Broome", first_name: "Darren", last_name: "Broome", email: "Dbroome@gmail.com", profile_picture: "https://scontent.fsnc1-1.fna.fbcdn.net/t31.0-8/12265750_761654107296462_3569104524132243151_o.jpg", city: "Carbondale", state: "Colorado", sex: "M", ftp: 280, weight: 77, bikes: "Moots YBB", phone_number: "")
#
  # "name": "Golden M",
  # "description": "the best ride ever",
  # "distance": 4475.4,
  # "moving_time": 1303,
  # "total_elevation_gain": 154.5,
  # "elev_high": 331.4,
  # "elev_low": 276.1,
  # "type": "Run",
  # "start_date": "2012-12-13T03:43:19Z",
  # "start_date_local": "2012-12-12T19:43:19Z",
  #

# (name: "Golden Mountain Biking", description: "Getting back on the XTC post crash", distance: 22941.4, moving_time: 5844, total_elevation_gain: 887.7, start_date: "2016-07-24T17:58:35Z")
(name: "Golden Mountain Biking", description: "Getting back on the XTC post crash", distance: 22941.4, moving_time: 5844, total_elevation_gain: 887.7, start_date: "2016-07-24T17:58:35Z")
calle.goals.create(title: "Tempo Miles", description: "Long miles all where 80% is spent at tempo", miles: 250)
#
#
#
#
# user.each do |data|
#     athlete = User.create(data)
#     puts "#{user.uid} successfully created"
#   end
