class CreatePlantSunsetZones < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_sunset_zones do |t|
      t.references :sunset_zone, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
