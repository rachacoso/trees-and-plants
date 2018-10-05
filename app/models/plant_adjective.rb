class PlantAdjective < ApplicationRecord
  belongs_to :adjective_id
  belongs_to :plant_id
end
