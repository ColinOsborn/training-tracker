require "rails_helper"


describe RidesController do
  context 'index' do
    it "displays a collection of rides" do
      ride = FactoryGirl.create(:ride)

      get(:index)

      expect(response).to render_template(:index)
      expect(assigns(:rides).first.name).to eq(ride.name)
    end
  end
  # context 'show' do
  #   it "displays a single ride" do
  #     ride = FactoryGirl.create(:ride)
  #
  #     get(:show)
  #
  #     expect(response).to render_template(:show)
  #     expect(assigns(:ride).first.description).to eq(ride.description)
  #   end
  # end
end
