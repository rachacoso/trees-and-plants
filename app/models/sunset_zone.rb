class SunsetZone < ApplicationRecord
	has_many :plant_sunset_zones
	has_many :plants, through: :plant_sunset_zones


	def consecutive
		old_array.slice_when { |prev, curr| curr != prev.next }.to_a

	end

end
