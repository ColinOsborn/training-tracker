class Athlete < OpenStruct

  # def initialize(new_athlete_hash)
  #   @first_name = new_athlete_hash["firstname"]
  #   @last_name = new_athlete_hash["lastname"]
  #   @name = new_athlete_hash["username"]
  # end

  def self.service
    @@service ||= AthleteService.new
  end

  def self.find(user_id)
    athlete_hash = service.get_athlete(user_id)
    Athlete.new(athlete_hash)
  end

end
