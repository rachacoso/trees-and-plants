class PlantTexture < ApplicationRecord
  belongs_to :texture_id
  belongs_to :plant_id
end
