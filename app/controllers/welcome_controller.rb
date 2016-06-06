class WelcomeController < ApplicationController
  def index
    @station = Station.new
  end
end
