require 'faraday'


class NrelService
  def @_connection
    Faraday.new(url: "GET https://api.data.gov/nrel/alt-fuel-stations/v1.json?limit=1&api_key=#{ENV['']}")
  end

  private
    def connection
      @_connection
    end
end
