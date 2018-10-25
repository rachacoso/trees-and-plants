class CreatePlantShapes < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_shapes do |t|
      t.references :shape, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
