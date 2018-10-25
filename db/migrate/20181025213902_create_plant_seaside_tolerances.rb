class CreatePlantSeasideTolerances < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_seaside_tolerances do |t|
      t.references :seaside_tolerance, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
