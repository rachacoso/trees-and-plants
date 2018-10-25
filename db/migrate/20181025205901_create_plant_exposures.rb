class CreatePlantExposures < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_exposures do |t|
      t.references :exposure, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
