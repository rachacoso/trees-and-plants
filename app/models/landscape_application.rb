class LandscapeApplication < ApplicationRecord
	has_many :plant_landscape_applications
	has_many :plants, through: :plant_landscape_applications
end
