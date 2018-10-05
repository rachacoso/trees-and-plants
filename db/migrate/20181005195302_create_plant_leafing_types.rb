class CreatePlantLeafingTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_leafing_types do |t|
      t.references :leafing_type_id, foreign_key: true
      t.references :plant_id, foreign_key: true

      t.timestamps
    end
  end
end
