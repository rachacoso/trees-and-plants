class PlantHabit < ApplicationRecord
  belongs_to :habit
  belongs_to :plant
end
