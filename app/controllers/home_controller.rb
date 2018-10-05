class HomeController < ApplicationController
  def front
  	@plant = Plant.first
  	@colors = Color.all
  	@test = Color.where(color: "green (medium-green)")
  end
end
