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
end
