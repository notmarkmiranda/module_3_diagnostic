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

  private
    def connection
      @_connection
    end
end
