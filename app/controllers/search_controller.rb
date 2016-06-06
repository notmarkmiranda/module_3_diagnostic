class SearchController < ApplicationController

  def index
    @stations = NrelService.new.nearest_stations(params["q"])
  end
end
