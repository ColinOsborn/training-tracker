require "rails_helper"


RSpec.feature "user logs in with strava" do
  scenario "user needs to login" do
    OmniAuth.config.mock_auth[:strava]

    visit root_path
    expect(response).to have_http_status(:success)

    click_link "Sign in with Strava"
    expect(current_path).to eq("/")
    expect(page).to have_content("Sign Out")

    # scenario "can handle authentication error" do
    #   OmniAuth.config.mock_auth[:strava] = :invalid_credentials
    #   visit '/'
    #   page.should have_content("Sign in with Strava")
    #   # click_link "Sign in"
    #   page.should have_content('Authentication failed.')
    # end

  end
end
