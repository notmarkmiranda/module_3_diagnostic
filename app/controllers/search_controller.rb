class SearchController < ApplicationController

  def index
    @stations = JSON.parse(NrelService.new.stations(params["q"]).body)
  end
end
