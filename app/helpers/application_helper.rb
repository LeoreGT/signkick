module ApplicationHelper

  def format_duration_to_hour_minute(duration)
    Time.at(duration).utc.strftime("%H%M")
  end
end
