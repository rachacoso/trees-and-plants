class CreateGrowthRates < ActiveRecord::Migration[5.2]
  def change
    create_table :growth_rates do |t|
      t.string :growth_rate

      t.timestamps
    end
  end
end
