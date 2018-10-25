class CreatePlantSalinityTolerances < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_salinity_tolerances do |t|
      t.references :salinity_tolerance, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
