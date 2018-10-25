class CreatePlantRootDamagePotentials < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_root_damage_potentials do |t|
      t.references :root_damage_potential, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
