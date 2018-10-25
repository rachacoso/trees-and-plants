class SoilMoisture < ApplicationRecord
	has_many :plant_soil_moistures
	has_many :plants, through: :plant_soil_moistures
end
