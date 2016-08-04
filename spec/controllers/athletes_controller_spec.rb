require "rails_helper"


describe AthletesController do
  context 'index' do
    it "displays a collection of goals" do
      user = FactoryGirl.create(:user)

      get(:index)

      expect(response).to render_template(:index)
      expect(assigns(:users).first.first_name).to eq(user.first_name)
    end
  end
end
