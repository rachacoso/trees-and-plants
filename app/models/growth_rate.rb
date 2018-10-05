class GrowthRate < ApplicationRecord
	has_many :plant_growth_rates
	has_many :plants, through: :plant_growth_rates
end
