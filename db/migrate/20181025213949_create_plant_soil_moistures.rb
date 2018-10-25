class CreatePlantSoilMoistures < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_soil_moistures do |t|
      t.references :soil_moisture, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
