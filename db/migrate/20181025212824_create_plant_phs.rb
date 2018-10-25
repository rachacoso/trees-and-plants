class CreatePlantPhs < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_phs do |t|
      t.references :ph, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
