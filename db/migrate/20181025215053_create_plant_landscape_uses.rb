class CreatePlantLandscapeUses < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_landscape_uses do |t|
      t.references :landscape_use, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
