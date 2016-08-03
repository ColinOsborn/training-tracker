class AthleteService

  def initialize
    @connection = Faraday.new("https://www.strava.com")
    @connection.headers["Authorization"] = "Bearer 3dc61d2c7f1e1f7c171f2f18da0f2364ef052bfa"
  end

  def get_athlete(user_id)
    response = @connection.get("/api/v3/athletes/#{user_id}.json")
    parse(response)
  end

  def get_athlete_stats(user_id)
    response = @connection.get("/api/v3/athletes/#{user_id}/stats.json")
    parse(response)
  end

  def get_athlete_zones(user_id)
    response = @connection.get("/api/v3/athlete/zones.json")
    parse(response)
  end

  def get_athlete_rides(activity_id)
    response = @connection.get("/api/v3/activity/#{activity_id}.json")
    parse(response)
    byebug
  end

  def parse(response)
    JSON.parse(response.body)
  end

end
