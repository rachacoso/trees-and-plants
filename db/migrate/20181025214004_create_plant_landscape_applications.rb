class CreatePlantLandscapeApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_landscape_applications do |t|
      t.references :landscape_application, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
