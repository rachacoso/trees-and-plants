class PlantSalinityTolerance < ApplicationRecord
  belongs_to :salinity_tolerance
  belongs_to :plant
end
