class PlantSoilTexture < ApplicationRecord
  belongs_to :soil_texture
  belongs_to :plant
end
