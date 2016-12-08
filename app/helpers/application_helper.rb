module ApplicationHelper

  def format_duration_to_hour_minute(duration)
    Time.at(duration).utc.strftime("%H%M")
  end

  def starify
    lambda { |number| (number * '<i class="fa fa-star" aria-hidden="true"></i>').html_safe}
  end
end
