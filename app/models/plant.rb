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

end
