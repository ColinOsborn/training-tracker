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
end
