require "rails_helper"

RSpec.feature 'user logs in an sees their info on the dashboard' do
    scenario "user logs into account to see their basic info" do
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
  scenario "user logs into account to see their basic info" do
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
    expect(page).to have_content("Friends")

    click_on "Friends"
    expect(current_path).to eq(athletes_path)
    expect(page).to have_content("Friends Stats")
  end
end
