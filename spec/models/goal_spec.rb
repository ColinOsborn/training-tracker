require 'rails_helper'

RSpec.describe Goal, type: :model do

    it "takes totals and puts them into a daily value" do
      miles = 110
      goal = Goal.new
      result = goal.mileage(miles)
      expect(result).to eq(18)
  end
    it {should belong_to :user}
end
