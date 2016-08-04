require "rails_helper"

RSpec.feature 'user logs in and sees their rides on dashboard' do
    scenario "user logs into account to see their basic info" do
      OmniAuth.config.mock_auth[:strava]
      user = FactoryGirl.create(:user)
      ride = FactoryGirl.create(:ride)

      visit root_path

      expect(page).to have_content("Login with Strava")

      mock_omniauth

      click_on "Login with Strava"
      expect(current_path).to eq(dashboard_path)
      expect(page).to have_content("Logout")
      expect(page).to have_content("#{user.name}")
      expect(page).to have_content("Athlete Stats")
      expect(page).to have_content("Friends & Followers")
      expect(page).to have_content("Goals")
      expect(page).to have_content("Rides")

      click_link "#{user.first_name}'s Rides"

      expect(current_path).to eq(rides_path)

      expect(page).to have_content("All Rides")
      expect(page).to have_content("#{ride.name}")
      expect(page).to have_content("#{ride.description}")
      expect(page).to have_content("14.25")
      expect(page).to have_content("#{ride.total_elevation_gain}")
      expect(page).to have_content("97.4")
      expect(page).to have_content("2910.11 feet")
    end
  end
