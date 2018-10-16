class PlantsController < ApplicationController
	before_action :set_plant, only: [:show, :edit, :update, :destroy]
	before_action :get_plant_attributes, only: [:edit, :new]

	def show

	end

	def index
		@plants = Plant.all
	end

	def adminindex
		@plants = Plant.all
	end

	def new
		@plant = Plant.new
	end

	def create

		@plant = Plant.new
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

	def edit

	end

	def update
		@plant.update(plant_parameters)
		@plant.color_ids = params[:plant][:color_ids]
		@plant.adjective_ids = params[:plant][:adjective_ids]
		@plant.texture_ids = params[:plant][:texture_ids]
		@plant.growth_rate_ids = params[:plant][:growth_rate_ids]
		@plant.leafing_type_ids = params[:plant][:leafing_type_ids]

		if params[:plant][:images_featured].present?
			image = Image.create(image_type: 'featured')
			image.attach(params[:plant][:images_featured])
			@plant.images << image
		end
		if params[:plant][:images_other].present?
			image = Image.create(image_type: 'other')
			image.attach(params[:plant][:images_other])
			@plant.images << image
		end

		respond_to do |format|
			format.html { 
				redirect_to edit_plant_url(@plant)
			}
			format.js 
		end
	end

	def destroy

	end

	private
	def set_plant
		# if @current_user.administrator
		# 	@plant = Order.find(params[:id])
		# else
			@plant = Plant.find_by_id(params[:id])
		# end
	end

	def get_plant_attributes
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
		:colors,
		:description,
		images: []

		)
	end
end
