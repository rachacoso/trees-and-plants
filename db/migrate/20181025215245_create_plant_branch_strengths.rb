class CreatePlantBranchStrengths < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_branch_strengths do |t|
      t.references :branch_strength, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
