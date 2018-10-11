class Adjective < ApplicationRecord
	has_many :plant_adjectives
	has_many :plants, through: :plant_adjectives

	default_scope { order(adjective: :asc) }
end
