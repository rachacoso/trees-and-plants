class AddHybridNameToPlants < ActiveRecord::Migration[5.2]
  def change
  	add_column :plants, :hybrid_name, :string
  end
end
