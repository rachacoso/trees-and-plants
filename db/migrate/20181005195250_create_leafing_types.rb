class CreateLeafingTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :leafing_types do |t|
      t.string :leafing_type

      t.timestamps
    end
  end
end
