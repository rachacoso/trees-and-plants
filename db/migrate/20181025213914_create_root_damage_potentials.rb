class CreateRootDamagePotentials < ActiveRecord::Migration[5.2]
  def change
    create_table :root_damage_potentials do |t|
      t.string :root_damage_potential

      t.timestamps
    end
  end
end
