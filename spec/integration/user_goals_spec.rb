require "rails_helper"

RSpec.feature 'user logs in and sees their goals on dashboard' do
    scenario "user logs into account to see their basic info" do
      OmniAuth.config.mock_auth[:strava]
      user = FactoryGirl.create(:user)
      goal = FactoryGirl.create(:goal)

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

      click_on "Mileage Goals"

      expect(current_path).to eq(goals_path)
      expect(page).to have_content("#{goal.title}")
      expect(page).to have_content("#{goal.miles}")
      expect(page).to have_content("#{goal.description}")
    end

    scenario "user can view a specific goal" do
      OmniAuth.config.mock_auth[:strava]
      user = FactoryGirl.create(:user)
      goal = FactoryGirl.create(:goal)

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

      click_on "Mileage Goals"

      expect(current_path).to eq(goals_path)
      expect(page).to have_content("#{goal.title}")
      expect(page).to have_content("#{goal.miles}")
      expect(page).to have_content("#{goal.description}")

      click_on "#{goal.title}"

      expect(current_path).to eq(goal_path(goal.id))
      expect(page).to have_content("#{goal.title}")
      expect(page).to have_content("#{goal.miles}")
      expect(page).to have_content("#{goal.description}")
      end
    end
