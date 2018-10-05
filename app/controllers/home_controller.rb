class HomeController < ApplicationController
  def front
  	@plant = Plant.first
  end
end
