class CreatePlantHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_habits do |t|
      t.references :habit, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
