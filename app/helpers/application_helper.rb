module ApplicationHelper

  def meter_to_mile(meters)
    formated = meters * (0.00062137119)
    formated.round(2)
  end

  def meter_to_foot(meters)
    formated = meters * (3.28084)
    formated.round(2)
  end

  def second_to_minute(seconds)
    formated = seconds * (0.01666667)
    formated.round(2)
  end

  def mph_conversion(kph)
    formated = kph * (2.23694)
    formated.round(2)
  end
end
