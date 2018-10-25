class CreatePlantLitterTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_litter_types do |t|
      t.references :litter_type, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
