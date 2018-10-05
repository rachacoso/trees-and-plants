class Texture < ApplicationRecord
	has_many :plant_textures
	has_many :plants, through: :plant_textures
end
