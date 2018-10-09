class HomeController < ApplicationController
  def front
  	@plant = Plant.first
  	@leaf_growth_colors = Color.leaf_growth
  	@test = Color.where(color: "green (medium-green)")
  end
end
