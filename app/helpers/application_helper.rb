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

  def format_time(activity)
    activity["start_date_local"].split("T").last.chop
  end

end
