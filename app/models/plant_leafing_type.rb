class PlantLeafingType < ApplicationRecord
  belongs_to :leafing_type_id
  belongs_to :plant_id
end
