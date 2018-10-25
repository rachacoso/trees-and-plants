class CreatePhs < ActiveRecord::Migration[5.2]
  def change
    create_table :phs do |t|
      t.string :ph

      t.timestamps
    end
  end
end
