class PlantExposure < ApplicationRecord
  belongs_to :exposure
  belongs_to :plant
end
