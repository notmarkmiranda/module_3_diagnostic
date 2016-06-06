require 'rails_helper'

describe NrelService do
  before do
    @service = NrelService.new
  end

  it "can find stations based on zip code and distance" do
    VCR.use_cassette("stations_by_zip") do
      response = @service.stations(80203, 6)
      body = JSON.parse(response.body)
      expect do
        body["fuel_stations"].map do |station|
          station["fuel_type_code"]
        end.uniq.count.to eq 2
      end
    end
  end

end
