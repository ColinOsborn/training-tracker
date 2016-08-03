require "rails_helper"


describe AthleteService do
  context "#get_athlete" do
    it "returns an athlete" do
      VCR.use_cassette("get_athlete") do
      athlete = AthleteService.new.get_athlete("175260")

      expect(athlete["username"]).to eq("colin_osborn")
      expect(athlete["firstname"]).to eq("Colin")
      expect(athlete["lastname"]).to eq("Osborn")
      expect(athlete["city"]).to eq("Carbondale")
      expect(athlete["state"]).to eq("Colorado")
      expect(athlete["country"]).to eq("United States")
      expect(athlete["sex"]).to eq("M")
      end
    end
  end

  context "#get_athlete_stats" do
    it "returns an athletes stat info" do
      VCR.use_cassette("get_athlete_stats") do
        athlete = AthleteService.new.get_athlete_stats("175260")

        expect(athlete["biggest_ride_distance"]).to eq(205430.0)
        expect(athlete["biggest_climb_elevation_gain"]).to eq(1330.9)
        expect(athlete["recent_ride_totals"]["count"]).to eq(6)
        expect(athlete["recent_ride_totals"]["distance"]).to eq(111559.20166015625)
        expect(athlete["recent_ride_totals"]["moving_time"]).to eq(17505)
        expect(athlete["recent_ride_totals"]["elapsed_time"]).to eq(21589)
        expect(athlete["recent_ride_totals"]["elevation_gain"]).to eq(1573.4475059509277)
        expect(athlete["recent_ride_totals"]["achievement_count"]).to eq(9)
        expect(athlete["ytd_ride_totals"]["count"]).to eq(6)
        expect(athlete["ytd_ride_totals"]["distance"]).to eq(111560)
        expect(athlete["ytd_ride_totals"]["moving_time"]).to eq(17505)
        expect(athlete["ytd_ride_totals"]["elapsed_time"]).to eq(21589)
        expect(athlete["ytd_ride_totals"]["elevation_gain"]).to eq(1574)
      end
    end
  end

  context "#get_athlete_rides" do
    it "returns an athletes ride info" do
      VCR.use_cassette("get_athlete_rides") do
        rides = AthleteService.new.get_athlete_rides("660611892#16179345274")

        expect(rides["id"]).to eq(660611892)
        expect(rides["athlete"]["id"]).to eq(175260)
        expect(rides["name"]).to eq("Golden Mountain Biking")
        expect(rides["distance"]).to eq(22941.4)
        expect(rides["total_elevation_gain"]).to eq(887.7)
      end
    end
  end
end
