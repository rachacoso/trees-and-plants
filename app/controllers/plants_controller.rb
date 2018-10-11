class PlantsController < ApplicationController
	before_action :set_plant, only: [:show, :edit, :update]

	def show

	end

	def edit
		@growth_rates = GrowthRate.all
		@textures = Texture.all
		@leafing_types = LeafingType.all
		@adjectives = Adjective.all
		@color_leaf_growth = Color.leaf_growth
		@color_leaf_autumn = Color.leaf_autumn
		@color_bark = Color.bark
		@color_flower = Color.flower
		@color_fruit = Color.fruit
	end

	private
	def set_plant
		# if @current_user.administrator
		# 	@plant = Order.find(params[:id])
		# else
			@plant = Plant.find_by_id(params[:id])
		# end
	end  
end
