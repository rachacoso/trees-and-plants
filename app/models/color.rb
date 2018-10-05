class Color < ApplicationRecord
	has_many :plants, through: :plant_colors
end
