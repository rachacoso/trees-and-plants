class PlantSoilMoisture < ApplicationRecord
  belongs_to :soil_moisture
  belongs_to :plant
end
