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
      expect(page).to have_content("#{user.name}")
      expect(page).to have_content("Athlete Stats")
  end
  scenario "user logs into account to see their friends/followers basic info" do
    OmniAuth.config.mock_auth[:strava]
    user = FactoryGirl.create(:user)
    user1 = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user)

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

    click_on "Friends"
    expect(current_path).to eq(athletes_path)
    expect(page).to have_content("Friends Stats")
    expect(page).to have_content("#{user1.name}")
    expect(page).to have_content("#{user1.city}")
    expect(page).to have_content("#{user1.state}")
    expect(page).to have_content("#{user1.ftp}")
    expect(page).to have_content("#{user1.bikes}")
    expect(page).to have_content("#{user1.weight}")
    expect(page).to have_content("#{user2.name}")
    expect(page).to have_content("#{user2.city}")
    expect(page).to have_content("#{user2.state}")
    expect(page).to have_content("#{user2.ftp}")
    expect(page).to have_content("#{user2.weight}")
    expect(page).to have_content("#{user2.bikes}")
  end
end
