class LeafingType < ApplicationRecord
	has_many :plant_leafing_types
	has_many :plants, through: :plant_leafing_types
end
