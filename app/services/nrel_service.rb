require 'faraday'


class NrelService


  def initialize
    @_connection = Faraday.new(url: 'https://developer.nrel.gov') do |c|
      c.request  :url_encoded
      c.response :logger
      c.adapter  Faraday.default_adapter
      c.params['format'] = "json"
      c.params['api_key'] = ENV['nrel_api_key']
    end
  end

  def stations(zip, distance)
    response = connection.get do |p|
      p.url("/api/alt-fuel-stations/v1/nearest.json")
      p.params['limit']     = 10
      p.params['location']  = zip
      p.params['radius']    = distance
      p.params['fuel_type'] = "LPG,ELEC"
    end
    JSON.parse(response.body)["fuel_stations"]
  end



  private
    def connection
      @_connection
    end


end
