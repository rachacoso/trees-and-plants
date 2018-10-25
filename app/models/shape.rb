class Shape < ApplicationRecord
	has_many :plant_shapes
	has_many :plants, through: :plant_shapes
end
