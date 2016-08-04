require 'rails_helper'

RSpec.describe Ride, type: :model do
  it {should belong_to :user}
end
