class CreateLandscapeApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :landscape_applications do |t|
      t.string :landscape_application

      t.timestamps
    end
  end
end
