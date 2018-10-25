class Habit < ApplicationRecord
	has_many :plant_habits
	has_many :plants, through: :plant_habits
end
