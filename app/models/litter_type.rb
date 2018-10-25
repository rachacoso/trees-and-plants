class LitterType < ApplicationRecord
	has_many :plant_litter_types
	has_many :plants, through: :plant_litter_types
end
