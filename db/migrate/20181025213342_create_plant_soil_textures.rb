class CreatePlantSoilTextures < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_soil_textures do |t|
      t.references :soil_texture, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
