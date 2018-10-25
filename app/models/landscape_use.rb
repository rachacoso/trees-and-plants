class LandscapeUse < ApplicationRecord
	has_many :plant_landscape_uses
	has_many :plants, through: :plant_landscape_uses
end
