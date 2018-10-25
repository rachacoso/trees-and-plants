class CreateSoilMoistures < ActiveRecord::Migration[5.2]
  def change
    create_table :soil_moistures do |t|
      t.string :soil_moisture

      t.timestamps
    end
  end
end
