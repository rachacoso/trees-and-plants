class Exposure < ApplicationRecord
	has_many :plant_exposures
	has_many :plants, through: :plant_exposures
end
