class AthleteService

  def initialize
    @connection = Faraday.new("https://www.strava.com")
    @connection.headers["Authorization"] = "Bearer 3dc61d2c7f1e1f7c171f2f18da0f2364ef052bfa"
  end

  def get_athlete(user_id)
    response = @connection.get("/api/v3/athletes/#{user_id}.json")
    parse(response)
  end

  def get_pro
    response = @connection.get("/api/v3/athletes/#{pro_user_id}.json")
    parse(response)
  end

  def pro_user_id
    ["524774", "119832", "723518", "370256", "186522", "320095", "2483643", "663394"].sample
    # 0 = Flo, 1 = RF, 2 = CF, 3 = KB, 4 = LTD, 5 = AV, 6 = EL, 7 = NS
  end

  def parse(response)
    JSON.parse(response.body)
  end

end
