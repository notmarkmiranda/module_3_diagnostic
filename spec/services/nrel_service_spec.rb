require 'rails_helper'

describe NrelService do
  before do
    @service = NrelService.new
  end

  it "can find stations based on zip code" do
    VCR.use_cassette("stations_by_zip") do
      a = @service.stations(80203, 6)
      require 'pry'; binding.pry
    end
  end
end
