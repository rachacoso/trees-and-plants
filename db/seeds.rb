# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

colors = ["yellow", "green", "green (pale-green)", "green (medium-green)", "green (dark-green)", "green (blue-green)", "green (gray-green)", "red", "brown", "brown (yellow-brown)", "purple", "gray", "white"]
colors.each do |color|
	Color.create( color: color )
end

plant = Plant.create( genus: 'Afrocarpus', species: 'falcatus', common_name: 'Fern Pine', leafing_type: 'Evergreen', height_min: 60, width_min: 45, ca_native: true)
colors = ["green (blue-green)","green (gray-green)","green (dark-green)"]
colors.each do |color|
	plant_color = Color.where(color: color).first
	plant.colors << plant_color
end


# plant.save!

