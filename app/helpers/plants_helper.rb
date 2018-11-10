module PlantsHelper
	def checkFilter(plant_attribute, value, filters)
		if filters.present?
			if to_be_checked = filters[plant_attribute.to_sym]
				if to_be_checked.map(&:to_i).include?(value)
					return true
				else
					return false
				end
			else
				return false
			end
		else
			return false
		end
	end
end
