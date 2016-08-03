class Goal < ApplicationRecord
  belongs_to :user

  def mileage(miles)
    miles / 6
  end

end
