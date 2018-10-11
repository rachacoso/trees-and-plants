class PlantsController < ApplicationController
	before_action :set_plant, only: [:show, :edit, :update]

	def show

	end

	def edit
		@growth_rates = GrowthRate.all
		@textures = Texture.all
		@leafing_types = LeafingType.all
		@adjectives = Adjective.all
		@colors_leaf_growth = Color.leaf_growth
		@colors_leaf_autumn = Color.leaf_autumn
		@colors_bark = Color.bark
		@colors_flower = Color.flower
		@colors_fruit = Color.fruit
	end

	def update
		@plant.update(plant_parameters)
		@plant.color_ids = params[:plant][:color_ids]
		@plant.adjective_ids = params[:plant][:adjective_ids]
		@plant.texture_ids = params[:plant][:texture_ids]
		@plant.growth_rate_ids = params[:plant][:growth_rate_ids]
		@plant.leafing_type_ids = params[:plant][:leafing_type_ids]

		respond_to do |format|
			format.html { 
				redirect_to edit_plant_url(@plant)
			}
			format.js 
		end
	end

	private
	def set_plant
		# if @current_user.administrator
		# 	@plant = Order.find(params[:id])
		# else
			@plant = Plant.find_by_id(params[:id])
		# end
	end
  def plant_parameters
    params.require(:plant).permit(

		:genus, 
		:species, 
		:common_name, 
		:tree, 
		:shrub, 
		:leafing_type, 
		:fruits, 
		:ca_native, 
		:problematic, 
		:height_min, 
		:height_max, 
		:width_min, 
		:width_max,
		:growth_rates,
		:colors

		)
	end
end
