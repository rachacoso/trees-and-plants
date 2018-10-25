class SeasideTolerance < ApplicationRecord
	has_many :plant_seaside_tolerances
	has_many :plants, through: :plant_seaside_tolerances
end
