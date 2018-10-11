class Plant < ApplicationRecord
	has_many :plant_adjectives
	has_many :adjectives, through: :plant_adjectives
	has_many :plant_colors
	has_many :colors, through: :plant_colors
	has_many :plant_growth_rates
	has_many :growth_rates, through: :plant_growth_rates
	has_many :plant_leafing_types
	has_many :leafing_types, through: :plant_leafing_types
	has_many :plant_textures
	has_many :textures, through: :plant_textures
	has_many_attached :images
	
	def check_property(property, value)
		case property
		when 'color'
			return true if self.colors.find_by_id(value)
		when 'growth_rate'
		when 'leafing_type'
		when 'texture'
		when 'adjective'
		end
	end
end
