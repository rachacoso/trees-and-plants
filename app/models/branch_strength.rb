class BranchStrength < ApplicationRecord
	has_many :plant_branch_strengths
	has_many :plants, through: :plant_branch_strengths

	
end
