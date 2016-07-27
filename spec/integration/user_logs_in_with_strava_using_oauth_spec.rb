require "rails_helper"


RSpec.feature "user logs in with strava" do
  scenario "user needs to login" do
    OmniAuth.config.mock_auth[:strava]

    visit root_path
    expect(response).to have_http_status(:success)

    within(".login") do
      click_on "Log in with Strava"
    end
    expect(current_path).to eq(root_path)
    expect(page).to have_content(user.firstname)
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
