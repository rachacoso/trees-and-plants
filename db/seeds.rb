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
fruit_colors = ["Beige", "Black", "Blue", "Blue (Blue Green)", "Green", "Brown", "Chartreuse", "Gray", "Lavender", "Orange", "Pink", "Purple", "Red", "Rose", "White", "Yellow"]
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
exposures = ["Sun", "Partial Shade", "Full Shade"]
exposures.each do |item|
	Exposure.create( exposure: item )
end

ph = ["Very Acidic", "Slightly Acidic", "Netural", "Slightly Alkaline", "Very Alkaline"]
ph.each do |item|
	Ph.create( ph: item )
end

sunset_zone = [*1..45]
sunset_zone.each do |item|
	SunsetZone.create( sunset_zone: item )
end

soil_texture = ["Clay", "Loam", "Sand"]
soil_texture.each do |item|
	SoilTexture.create( soil_texture: item )
end

salinity_tolerance = ["Moderate", "Good"]
salinity_tolerance.each do |item|
	SalinityTolerance.create( salinity_tolerance: item )
end

seaside_tolerance = ["Good", "Medium"]
seaside_tolerance.each do |item|
	SeasideTolerance.create( seaside_tolerance: item )
end

root_damage_potential = ["Low", "Moderate", "High"]
root_damage_potential.each do |item|
	RootDamagePotential.create( root_damage_potential: item )
end

soil_moisture = ["Wet", "Moist", "Dry"]
soil_moisture.each do |item|
	SoilMoisture.create( soil_moisture: item )
end

landscape_application = ["Screen", "Riparian", "Buffer Strip", "Specimen", "Container", "Street Tree", "Shade Tree"]
landscape_application.each do |item|
	LandscapeApplication.create( landscape_application: item )
end

landscape_use = ["Topiary", "Bonsai", "Espalier", "Hedged", "Pleached", "Pollarding"]
landscape_use.each do |item|
	LandscapeUse.create( landscape_use: item )
end

shape = ["Columnar", "Conical", "Oval", "Rounded", "Umbrella", "Vase", "Palm"]
shape.each do |item|
	Shape.create( shape: item )
end

habit = ["Spreading", "Compact", "Erect", "Weeping"]
habit.each do |item|
	Habit.create( habit: item )
end

branch_strength = ["Strong", "Medium", "Weak"]
branch_strength.each do |item|
	BranchStrength.create( branch_strength: item )
end

litter_type = ["Flower", "Fruit", "Wet Fruit", "Dry Fruit", "Leaves", "Twigs", "Bark"]
litter_type.each do |item|
	LitterType.create( litter_type: item )
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

