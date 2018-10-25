class RootDamagePotential < ApplicationRecord
	has_many :plant_root_damage_potentials
	has_many :plants, through: :plant_root_damage_potentials
end
