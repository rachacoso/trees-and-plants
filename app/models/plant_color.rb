class PlantColor < ApplicationRecord
  belongs_to :color_id
  belongs_to :plant_id
end
