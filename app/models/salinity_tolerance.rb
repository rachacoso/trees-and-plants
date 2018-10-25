class SalinityTolerance < ApplicationRecord
	has_many :plant_salinity_tolerances
	has_many :plants, through: :plant_salinity_tolerances
end
