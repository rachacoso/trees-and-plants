class CreateLitterTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :litter_types do |t|
      t.string :litter_type

      t.timestamps
    end
  end
end
