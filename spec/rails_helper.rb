# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'
# require 'rack_session_access/capybara'


Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

module OmniauthMod
  def mock_omniauth
    # The mock_auth configuration allows you to set per-provider (or default)
    # authentication hashes to return during integration testing.
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:strava] = OmniAuth::AuthHash.new({
      "provider"=>"strava",
     "uid"=>"12657",
     "info"=>{"name"=>"Colin Osborn", "first_name"=>"Colin", "last_name"=>"Osborn", "email"=>"Colin.Osborn@gmail.com", "location"=>" "},
     "credentials"=>{"token"=> ENV['STRAVA_CLIENT_SECRET'], "expires"=>false},
     "extra"=>
      {"raw_info"=>
        {"id"=>12657,
         "username"=>"colinosborn",
         "resource_state"=>3,
         "firstname"=>"Colin",
         "lastname"=>"Osborn",
         "profile_medium"=>"https://lh4.googleusercontent.com/-xXqkgEoPVCc/AAAAAAAAAAI/AAAAAAAAA1M/_EEbUWVP6jY/photo.jpg",
         "profile"=>"https://lh4.googleusercontent.com/-xXqkgEoPVCc/AAAAAAAAAAI/AAAAAAAAA1M/_EEbUWVP6jY/photo.jpg",
         "city"=>"Carbondale",
         "state"=>"Colorado",
         "country"=>"USA",
         "sex"=>"M",
         "premium"=>false,
         "created_at"=>"2016-08-02T06:22:41Z",
         "updated_at"=>"2016-08-02T04:16:28Z",
         "follower_count"=>96,
         "friend_count"=>66,
         "athlete_type"=>1,
         "measurement_preference"=>"feet",
         "email"=>"Colin.Osborn@gmail.com",
         "weight"=>61.23,
         "bikes"=>[{"id"=>"b2647226", "primary"=>true, "name"=>"Giant XTC Advanced", "resource_state"=>2, "distance"=>0.0}]
        }
      }
    })
  end
end


    #
    #   'provider' => 'strava',
    #   'uid' => '12657',
    #   'user_info' => {
    #     'name' => 'Colin Osborn',
    #     'email' => 'Colin.Osborn@gmail.com',
    #     'image' => 'https://2.bp.blogspot.com/-5dP1CqrdLcg/Via0CvWLcbI/AAAAAAAAFG8/Px5XW0UL8-M/s1600/21320_10153156759677065_4259148829556330215_n.jpg'
    #   },
    #   'credentials' => {
    #     'token' => '12657',
    #     'secret' => '9bde0a6d7955d6b1a144a9444bf5a3151aa2f503'
    #   }
    # })



ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.include(OmniauthMod)
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
