class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :genus
      t.string :species
      t.string :common_name
      t.boolean :tree
      t.boolean :shrub
      t.string :leafing_type
      t.boolean :fruits
      t.boolean :ca_native
      t.integer :height_min
      t.integer :height_max
      t.integer :width_min
      t.integer :width_max

      t.timestamps
    end
  end
end
