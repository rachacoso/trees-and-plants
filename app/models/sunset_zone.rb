class SunsetZone < ApplicationRecord
	has_many :plant_sunset_zones
	has_many :plants, through: :plant_sunset_zones
end
