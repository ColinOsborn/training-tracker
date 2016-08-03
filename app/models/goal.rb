class Goal < ApplicationRecord
  belongs_to :user

  def mileage(miles)
    miles / 5
  end

end
