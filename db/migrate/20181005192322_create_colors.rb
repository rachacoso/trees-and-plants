class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.text :color
      t.text :color_type # Bark, Leaf (Autumn), Leaf (Growth), Flower, Fruit

      t.timestamps
    end
  end
end
