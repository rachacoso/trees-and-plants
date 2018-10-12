class CreatePlantTextures < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_textures do |t|
      t.references :texture, foreign_key: true
      t.references :plant, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
