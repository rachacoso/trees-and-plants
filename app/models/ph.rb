class Ph < ApplicationRecord
	has_many :plant_phs
	has_many :plants, through: :plant_phs
end
