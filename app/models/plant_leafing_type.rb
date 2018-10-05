class PlantLeafingType < ApplicationRecord
  belongs_to :leafing_type
  belongs_to :plant
end
