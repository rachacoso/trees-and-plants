class CreateAdjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :adjectives do |t|
      t.text :adjective

      t.timestamps
    end
  end
end
