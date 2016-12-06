module BookingsHelper
  def select_duration
    (30.minutes..8.hour).step(30.minutes).map {|x| [Time.at(x).utc.strftime("%H:%M"), x.to_i ]}
  end
end
