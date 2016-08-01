class Athlete < OpenStruct

  def self.service
    @@service ||= AthleteService.new
  end

  def self.find(user_id)
    athlete_hash = service.get_athlete(user_id)
    Athlete.new(athlete_hash)
  end

end
