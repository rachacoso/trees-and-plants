class CreatePlantTextures < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_textures do |t|
      t.references :texture_id, foreign_key: true
      t.references :plant_id, foreign_key: true
      t.text :type

      t.timestamps
    end
  end
end
