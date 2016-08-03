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
    expect(page).to have_content("Logout")
    expect(page).to have_content("Welcome, #{user.name}")
    expect(page).to have_content("Athlete Stats")
  end
end
