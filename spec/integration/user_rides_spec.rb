require "rails_helper"

RSpec.feature 'user logs in and sees their goals on dashboard' do
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

    end
  end
