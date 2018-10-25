class Plant < ApplicationRecord
	has_many :plant_adjectives
	has_many :adjectives, through: :plant_adjectives, dependent: :destroy
	has_many :plant_colors
	has_many :colors, through: :plant_colors, dependent: :destroy
	has_many :plant_growth_rates
	has_many :growth_rates, through: :plant_growth_rates, dependent: :destroy
	has_many :plant_leafing_types
	has_many :leafing_types, through: :plant_leafing_types, dependent: :destroy
	has_many :plant_textures
	has_many :textures, through: :plant_textures, dependent: :destroy
	has_many :plant_exposures
	has_many :exposures, through: :plant_exposures, dependent: :destroy
	has_many :plant_phs
	has_many :phs, through: :plant_phs, dependent: :destroy
	has_many :plant_sunset_zones
	has_many :sunset_zones, through: :plant_sunset_zones, dependent: :destroy
	has_many :plant_soil_textures
	has_many :soil_textures, through: :plant_soil_textures, dependent: :destroy
	has_many :plant_salinity_tolerances
	has_many :salinity_tolerances, through: :plant_salinity_tolerances, dependent: :destroy
	has_many :plant_seaside_tolerances
	has_many :seaside_tolerances, through: :plant_seaside_tolerances, dependent: :destroy
	has_many :plant_root_damage_potentials
	has_many :root_damage_potentials, through: :plant_root_damage_potentials, dependent: :destroy
	has_many :plant_soil_moistures
	has_many :soil_moistures, through: :plant_soil_moistures, dependent: :destroy
	has_many :plant_landscape_applications
	has_many :landscape_applications, through: :plant_landscape_applications, dependent: :destroy
	has_many :plant_landscape_uses
	has_many :landscape_uses, through: :plant_landscape_uses, dependent: :destroy
	has_many :plant_habits
	has_many :habits, through: :plant_habits, dependent: :destroy
	has_many :plant_branch_strengths
	has_many :branch_strengths, through: :plant_branch_strengths, dependent: :destroy
	has_many :plant_shapes
	has_many :shapes, through: :plant_shapes, dependent: :destroy
	has_many :plant_litter_types
	has_many :litter_types, through: :plant_litter_types, dependent: :destroy
	has_many :images

	scope :with_attached_images, -> { includes(:images).merge(Image.with_attached_file) }

	def check_property(property, value)
		case property
		when 'color'
			return true if self.colors.find_by_id(value)
		when 'growth_rate'
			return true if self.growth_rates.find_by_id(value)
		when 'leafing_type'
			return true if self.leafing_types.find_by_id(value)
		when 'texture'
			return true if self.textures.find_by_id(value)
		when 'adjective'
			return true if self.adjectives.find_by_id(value)
		end
	end

	def scientific_name
		return "#{self.genus.capitalize} #{self.species}"
	end
	def display_width
		if self.width_min
			if self.width_max
				return "#{self.width_min} - #{self.width_max}"
			else
				return "#{self.width_min}"
			end
		else
			return false
		end
	end
	def display_height
		if self.height_min
			if self.height_max
				return "#{self.height_min} - #{self.height_max}"
			else
				return "#{self.height_min}"
			end
		else
			return false
		end
	end
	def size_category
	end
end
