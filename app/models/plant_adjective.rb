class PlantAdjective < ApplicationRecord
  belongs_to :adjective
  belongs_to :plant
end
