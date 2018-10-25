class CreateLandscapeUses < ActiveRecord::Migration[5.2]
  def change
    create_table :landscape_uses do |t|
      t.string :landscape_use

      t.timestamps
    end
  end
end
