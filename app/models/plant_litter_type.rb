class PlantLitterType < ApplicationRecord
  belongs_to :litter_type
  belongs_to :plant
end
