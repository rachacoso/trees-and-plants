class CreateSalinityTolerances < ActiveRecord::Migration[5.2]
  def change
    create_table :salinity_tolerances do |t|
      t.string :salinity_tolerance

      t.timestamps
    end
  end
end
