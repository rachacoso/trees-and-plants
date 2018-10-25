class CreateExposures < ActiveRecord::Migration[5.2]
  def change
    create_table :exposures do |t|
      t.string :exposure

      t.timestamps
    end
  end
end
