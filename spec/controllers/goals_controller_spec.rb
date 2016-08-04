require "rails_helper"


describe GoalsController do
  context 'index' do
    it "displays a collection of goals" do
      goal = FactoryGirl.create(:goal)

      get(:index)

      expect(response).to render_template(:index)
      expect(assigns(:goals).first.title).to eq(goal.title)
    end
  end
end
