class CreatePlantGrowthRates < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_growth_rates do |t|
      t.references :rate_id, foreign_key: true

      t.timestamps
    end
  end
end
