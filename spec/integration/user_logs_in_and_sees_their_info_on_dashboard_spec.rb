require "rails_helper"

RSpec.feature 'user logs in an sees their info on the dashboard' do
  describe "user logs into account to see their basic info" do
    user = create(:user)

    visit root_path
    within("#login") do
      click_on "Log in with Strava"
    end

    expect(current_path).to eq(dashboard)
    expect(page).to have_content(user.name)
  end
end
