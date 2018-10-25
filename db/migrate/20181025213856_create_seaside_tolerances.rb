class CreateSeasideTolerances < ActiveRecord::Migration[5.2]
  def change
    create_table :seaside_tolerances do |t|
      t.string :seaside_tolerance

      t.timestamps
    end
  end
end
