class CreatePlantColors < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_colors do |t|
      t.references :color, foreign_key: true
      t.references :plant, foreign_key: true
      t.integer :rank

      t.timestamps
    end
  end
end
