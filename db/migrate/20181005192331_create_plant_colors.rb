class CreatePlantColors < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_colors do |t|
      t.references :color_id, foreign_key: true
      t.references :plant_id, foreign_key: true
      t.integer :rank

      t.timestamps
    end
  end
end
