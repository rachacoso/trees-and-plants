class CreateSunsetZones < ActiveRecord::Migration[5.2]
  def change
    create_table :sunset_zones do |t|
      t.string :sunset_zone

      t.timestamps
    end
  end
end
