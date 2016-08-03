require "rails_helper"
require "spec_helper"


RSpec.feature "user logs in with strava" do
  scenario "user needs to login" do
    OmniAuth.config.mock_auth[:strava]
    user = FactoryGirl.create(:user)

    visit root_path

    expect(page).to have_content("Login with Strava")

    mock_omniauth

    click_on "Login with Strava"
    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content("Welcome, #{user.name}")
    expect(page).to have_content("Sign Out")

    scenario "can handle authentication error" do
      OmniAuth.config.mock_auth[:strava] = :invalid_credentials
      visit '/'
      page.should have_content("Sign in with Strava")
      within(".login") do
        click_on "Log in with Strava"
      end
      page.should have_content('Authentication failed.')
    end

  end
end
