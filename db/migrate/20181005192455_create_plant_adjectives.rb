class CreatePlantAdjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_adjectives do |t|
      t.references :adjective_id, foreign_key: true
      t.references :plant_id, foreign_key: true

      t.timestamps
    end
  end
end
