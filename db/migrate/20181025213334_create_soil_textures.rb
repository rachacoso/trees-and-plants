class CreateSoilTextures < ActiveRecord::Migration[5.2]
  def change
    create_table :soil_textures do |t|
      t.string :soil_texture

      t.timestamps
    end
  end
end
