# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def add_color(color,color_type)
	Color.create( color: color, color_type: color_type )
end

leaf_growth_colors = ["Green", "Green (Blue-Green)", "Green (Gray-Green)", "Bronze", "Purple", "Red", "Lavender", "Pink", "Orange", "Yellow", "Silver", "Silver(Silver-Gray)", "White", "Variegated"]
leaf_growth_colors.each do |color|
	add_color(color,"Leaf (Growth)")
end
leaf_autumn_colors = ["Bronze", "Red", "Gold", "Orange", "Purple", "Multicolored", "No Change"]
leaf_autumn_colors.each do |color|
	add_color(color,"Leaf (Autumn)")
end
bark_colors = ["Black", "Brown", "Bronze", "Cream", "Brown (Dark Brown)", "Gray (Dark Gray)", "Green", "Green (Light Green)", "Gray", "Gray (Light Gray)", "Orange", "Pink", "Purple", "Brown (Red Brown)", "Multicolored"]
bark_colors.each do |color|
	add_color(color,"Bark")
end
flower_colors = ["Blue", "Brown", "Chartreuse", "Cream", "Gray", "Green", "Lavender", "Maroon", "Orange", "Peach", "Pink", "Purple", "Red", "Rose", "White", "Yellow"]
flower_colors.each do |color|
	add_color(color,"Flower")
end
fruit_colors = ["Beige", "Black", "Blue", "Blue Green", "Green", "Brown", "Chartreuse", "Gray", "Lavender", "Orange", "Pink", "Purple", "Red", "Rose", "White", "Yellow"]
fruit_colors.each do |color|
	add_color(color,"Fruit")
end

leafing_types = ["Evergreen", "Deciduous", "Semi-Evergreen", "Semi-Deciduous"]
leafing_types.each do |lt|
	LeafingType.create( leafing_type: lt )
end
growth_rates = ["Fast", "Moderate", "Slow"]
growth_rates.each do |gr|
	GrowthRate.create( growth_rate: gr )
end
textures = ["Blocky", "Exfoliating", "Fibrous", "Furrowed", "Ridged", "Rough", "Scaly", "Smooth", "Spiny", "Striated"]
textures.each do |t|
	Texture.create( texture: t )
end
adjectives = ["Majestic", "Magical", "Scrubby", "Mysterious", "Regal", "Fantastical", "Homey", "Shady", "Spindly", "Gnarled", "Wispy", "Magnetic", "Luxurious", "Pedestrian"]
adjectives.each do |a|
	Adjective.create( adjective: a )
end

plant = Plant.create( genus: 'Afrocarpus', species: 'falcatus', common_name: 'Fern Pine', height_min: 60, width_min: 45, ca_native: true, tree: true)
plant_leaf_growth_colors = ["Green (Blue-Green)","Green (Gray-Green)","Green"]
plant_leaf_growth_colors.each do |color|
	plant_color = Color.leaf_growth.where(color: color).first
	plant.colors << plant_color
end
plant_bark_colors = ["Gray","Brown"]
plant_bark_colors.each do |color|
	plant_color = Color.bark.where(color: color).first
	plant.colors << plant_color
end

