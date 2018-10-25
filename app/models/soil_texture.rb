class SoilTexture < ApplicationRecord
	has_many :plant_soil_textures
	has_many :plants, through: :plant_soil_textures
end
