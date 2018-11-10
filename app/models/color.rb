class Color < ApplicationRecord
	has_many :plant_colors
	has_many :plants, through: :plant_colors

	default_scope { order(color: :asc) }
	scope :leaf_growth, -> { where(color_type: "Leaf (Growth)") }
	scope :leaf_autumn, -> { where(color_type: "Leaf (Autumn)") }
	scope :bark, -> { where(color_type: "Bark") }
	scope :flower, -> { where(color_type: "Flower") }
	scope :fruit, -> { where(color_type: "Fruit") }

	def css_friendly
		return self.color.downcase.gsub(/\s/, '-' ).gsub(/[\(\)]/, '' )
	end
end
