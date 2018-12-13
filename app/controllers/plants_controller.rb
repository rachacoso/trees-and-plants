class PlantsController < ApplicationController
	before_action :set_plant, only: [:show, :edit, :update, :destroy]
	before_action :get_plant_attributes, only: [:edit, :new, :index]

	def show

	end

	def index

		@plants = Plant.all

		@size_width_min = params[:size_width_min].present? ? params[:size_width_min] : 0
		@size_width_max = params[:size_width_max].present? ? params[:size_width_max] : 300
		@size_height_min = params[:size_height_min].present? ? params[:size_height_min] : 0
		@size_height_max =  params[:size_height_max].present? ? params[:size_height_max] : 300

		@plants = @plants.width(@size_width_min, @size_width_max)
		@plants = @plants.height(@size_height_min, @size_height_max)

		if params[:plant]
			@filters = params[:plant]
			plant_ids = []
			@filters.each do |key, value|
				case key
				when "growth_rate_ids"
					@plants = @plants.with_growth_rates(value).distinct
				when "leafing_type_ids"
					@plants = @plants.with_leafing_types(value).distinct
				when "exposure_ids"
					@plants = @plants.with_exposures(value).distinct
				when "ph_ids"
					@plants = @plants.with_phs(value).distinct
				when "soil_texture_ids"
					@plants = @plants.with_soil_textures(value).distinct
				when "color_ids"
					@plants = @plants.with_colors(value).distinct
				when "soil_moisture_ids"
					@plants = @plants.with_soil_moistures(value).distinct
				when "landscape_application_ids"
					@plants = @plants.with_landscape_applications(value).distinct
				when "landscape_use_ids"
					@plants = @plants.with_landscape_uses(value).distinct
				when "shape_ids"
					@plants = @plants.with_shapes(value).distinct
				when "habit_ids"
					@plants = @plants.with_habits(value).distinct
				when "salinity_tolerance_ids"
					@plants = @plants.with_salinity_tolerances(value).distinct
				when "seaside_tolerance_ids"
					@plants = @plants.with_seaside_tolerances(value).distinct
				end
			end
			@plants.distinct
		else
			@filters = []
		end
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
		@plant.exposure_ids = params[:plant][:exposure_ids]
		@plant.ph_ids = params[:plant][:ph_ids]
		@plant.sunset_zone_ids = params[:plant][:sunset_zone_ids]
		@plant.soil_texture_ids = params[:plant][:soil_texture_ids]
		@plant.salinity_tolerance_ids = params[:plant][:salinity_tolerance_ids]
		@plant.seaside_tolerance_ids = params[:plant][:seaside_tolerance_ids]
		@plant.root_damage_potential_ids = params[:plant][:root_damage_potential_ids]
		@plant.soil_moisture_ids = params[:plant][:soil_moisture_ids]
		@plant.landscape_application_ids = params[:plant][:landscape_application_ids]
		@plant.landscape_use_ids = params[:plant][:landscape_use_ids]
		@plant.shape_ids = params[:plant][:shape_ids]
		@plant.habit_ids = params[:plant][:habit_ids]
		@plant.branch_strength_ids = params[:plant][:branch_strength_ids]
		@plant.litter_type_ids = params[:plant][:litter_type_ids]

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
		@plant.exposure_ids = params[:plant][:exposure_ids]
		@plant.ph_ids = params[:plant][:ph_ids]
		@plant.sunset_zone_ids = params[:plant][:sunset_zone_ids]
		@plant.soil_texture_ids = params[:plant][:soil_texture_ids]
		@plant.salinity_tolerance_ids = params[:plant][:salinity_tolerance_ids]
		@plant.seaside_tolerance_ids = params[:plant][:seaside_tolerance_ids]
		@plant.root_damage_potential_ids = params[:plant][:root_damage_potential_ids]
		@plant.soil_moisture_ids = params[:plant][:soil_moisture_ids]
		@plant.landscape_application_ids = params[:plant][:landscape_application_ids]
		@plant.landscape_use_ids = params[:plant][:landscape_use_ids]
		@plant.shape_ids = params[:plant][:shape_ids]
		@plant.habit_ids = params[:plant][:habit_ids]
		@plant.branch_strength_ids = params[:plant][:branch_strength_ids]
		@plant.litter_type_ids = params[:plant][:litter_type_ids]

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
		@exposures = Exposure.all
		@phs = Ph.all
		@sunset_zones = SunsetZone.all
		@soil_textures = SoilTexture.all
		@salinity_tolerances = SalinityTolerance.all
		@seaside_tolerances = SeasideTolerance.all
		@root_damage_potentials = RootDamagePotential.all
		@soil_moistures = SoilMoisture.all
		@landscape_applications = LandscapeApplication.all
		@landscape_uses = LandscapeUse.all
		@shapes = Shape.all
		@habits = Habit.all
		@branch_strengths = BranchStrength.all
		@litter_types = LitterType.all
		@adjectives = Adjective.all
		@colors_leaf_growth = Color.leaf_growth
		@colors_leaf_autumn = Color.leaf_autumn
		@colors_bark = Color.bark
		@colors_flower = Color.flower
		@colors_fruit = Color.fruit
		@colors = Color.all
	end

	def plant_parameters
		params.require(:plant).permit(

		:genus, 
		:species,
		:hybrid_name, 
		:common_name,
		:synonyms,
		:additional_common_names,
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
		:notes,
		images: []

		)
	end
end
