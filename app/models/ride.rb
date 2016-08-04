class Ride < ApplicationRecord
  belongs_to :user

  def goal_to_ride_comparison
    Goal.each do |goal|
      goal.miles
    end
  end
end
