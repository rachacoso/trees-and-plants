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

trees = [
  ["Afrocarpus","falcatus","Fern Pine","Evergreen. 60’ x 45’. Thin leaves: blue-gray-green to dark green. Cherry-sized fruits, blue-gray at first, ripening to a pale yellow-orange. Variegated, flaking bark, grey to brown. ","Great - working horse tree.  Not as commonly planted and can get very large seeds that are messy so watch for that.   The Afrocarpus gracilior was the species we observed at the Huntington ",60,nil,45,nil,false  ],
  ["Araucaria","heterophylla","Norfolk Island pine ","Evergreen. 100’ x 60’. Very large conifer with waxy, scale-like, dark green leaves and distinctive silhouette. Not a true pine, but a conifer, with large spiny cones. Rough, gray-brown bark. ","Great - but gets very large.  Needs lots of rooting space for its large roots.  ",100,nil,60,nil,false  ],
  ["Calocedrus","decrees","Incense cedar","Evergreen. 75-90’ x 40’. CA native. Large tree with fragrant, scale-like medium-green leaves, arranged in flat sprays. Small, winged “cones.” Fibrous, reddish-brown bark. ","Beautiful tree, not used as commonly but is nice. ",75,90,40,nil,true  ],
  ["Corymbia ","citriodora","Lemon-scented gum","Evergreen. 100’ x 50’. Very tall, slender tree with ghostly, smooth white bark. Leaves are narrow and yellowish-to-medium green, with red stems and smell strongly of lemons or citronella when crushed. ","One of the best Eucalyptus species to use, but it can get Lerp Psyllid insects.  Takes awhile to reach it’s beauty and height, but is one of the lacy and open canopy eucalyptus.  Not as prone to problems.",100,nil,50,nil,false  ],
  ["Eucalyptus","sideroxylon","Red Iron bark","Evergreen. 65’ x 45’. Native to Australia. Tall, fast-growing tree with spear-shaped gray-green leaves. Wispy pink flowers, giving way to small brown seed capsules. Rough, dark reddish-brown bark with large, blocky furrows. ","Fast growing, not as commonly planted anymore, but there are plenty around.  This is prone to shedding limbs due to its tight branch structure. ",65,nil,45,nil,false  ],
  ["Geijera","parviflora","Australian willow","Evergreen. 30’ x 20’. Fairly common medium-sized street tree with thin 3-4” gray-green leaves. Small white flowers in spring. Rough, gray-brown bark. ","Great easy working horse tree.  It needs shaping in the beginning and training for its branching structure that tends to be congested.  But, easy once it gets going  Make sure to find good root structure, has a tendency to have poor roots ",30,nil,20,nil,false  ],
  ["Grevillea","robusta","Silk oak","Evergreen. 75’ x 25’. Not an oak at all. Large trees with fern-like leaves and bright yellow-orange flowers mid to late spring. Often planted along freeways. ","Not my favorite.  Very messy, very brittle.  Good to KNOW this species, but I don’t recommend it. ",75,nil,25,nil,false  ],
  ["Lophostemon","confertus","Brisbane box","Evergreen. 50’ x 40’. Fast-growing tree very commonly planted in LA area over the past 15 years. Waxy dark green spear-shaped leaves. Reddish-brown peeling bark. White, star-shaped flowers in spring, giving way to small green or brown urn-shaped seed capsules.","Super easy.  Working horse.  Grows very fast in the beginning and maxes out around 30 feet.  It is low maintenance, low bugs, low root invasiveness, low diseases, super easy and pretty tree.  Nice screening tree. ",50,nil,40,nil,false  ],
  ["Lyonothamnus","floribunda","Catalina ironwood","Evergreen. 45’ x 30’. Medium sized tree native to CA. Leaves are fern-like and fragrant when crushed. Bark is light gray and peeling. ","Super easy.  Working horse.  Grows very fast in the beginning and maxes out around 30 feet.  It is low maintenance, low bugs, low root invasiveness, low diseases, super easy and pretty tree.  Nice screening tree. ",45,nil,30,nil,true  ],
  ["Magnolia","grandiflora","Southern magnolia","Evergreen. 80’ x 40’. Large, waxy green leaves, with rust-colored underside. Large white flowers in spring. Large greenish-brown seed pod with bright red seeds. ","Beautiful species.  Needs a bit more water than other trees.  Can need some rooting space, but also can adapt if planted young in a limited space.  Low maintenance generally. ",80,nil,40,nil,false  ],
  ["Melaleuca","quinquenervia","Cajeput","Evergreen. 20-40’ x 15-30’. Thin, spear-shaped gray-green leaves. Wispy white flowers in spring. Peeling, spongy white bark, with sections of dark gray or even black. ","Beautiful, fast growing, can be very invasive with roots. Single trunk trees are structurally better than the multi-trunks that have a tendency to split apart when older.  Doesn’t need a lot of water, but will use a lot if given the chance. ",20,40,15,30,false  ],
  ["Phoenix","canariensis","Canary island date palm","Evergreen. 50-60’ x 40-50’. Native to the Canary Islands. Wide, stout trunk. Long, feather-shaped fronds. White flowers in late summer and then orange dates. ","Beautiful palm, it is the only one susceptible to Fusarium oxysporum (Wilt) which is non-curable, so warn clients about this prior to installation.  But, a good palm to be familiar with and its growing conditions. ",50,60,40,50,false  ],
  ["Pinus","canariensis","Canary island pine","Evergreen. 65-80’ x 30-40’. Tall, narrow pine, very often planted along streets and in medians. Shaggy-looking 9-12” weeping needles. Rough, flaking, reddish-brown bark. Tip: Similar to Italian Stone Pine—look for narrower, more columnar structure. ","Great pine, super tolerant of tough growing conditions, hearty, and low maintenance, does not need much pruning, and in fact it rarely ever fails or sheds a limb.  ",65,80,30,40,false  ],
  ["Pittosporum","undulatum","Victorian box","Evergreen. 35’ x 30’. Medium-sized tree with waxy, dark-green leaves. Leaf edge is wavy, hence species name, “undulatum.” Small, fragrant yellow-to-white flowers in spring, giving way to garbanzo-shaped yellow-orange seedpods. Smooth, light gray bark. ","This is good to know, but I would not recommend this tree/shrub.  they don’t like the drought, heat, our soil, etc.  They are in decline all over so cal.",35,nil,30,nil,false  ],
  ["Podocarpus","macrophyllus","Yew pine ","Evergreen. 20-50’ x 15-40’. Medium sized-tree with medium green, thin leaves. Tip: Similar to Afrocarpus falcatus—look for brownish-gray, shaggy, peeling bark and longer, wider leaves than Afrocarpus falcatus. ","Good for hedging",20,50,15,40,false  ],
  ["Quercus","suber","Cork oak","Evergreen. 40-60’ x 30-40’. Medium sized tree with spiny, waxy dark green leaves, with pale green underside. Thick, whorled bark is primary source for cork. Tip: Similar to Coast live oak and Holly oak—look for cork-like, thick, whorled bark with variations of gray, white and brown. ","Beautiful oak.   upright and then broad when mature.  It can get huge when old. ",40,60,30,40,false  ],
  ["Quercus","agrifolia","Coast live oak","Evergreen tree. 60-70’ x 70-85’. CA native. Waxy, dark-green leaves are oval, cupped, and have spiny edges. Gray bark grows rougher with age. Tip: Similar to Cork oak and Holly oak—look for hair-like fibers between the veins on the underside of the leaf. ","Beautiful oak.   upright and then broad when mature.  It can get huge when old. ",60,70,70,85,true  ],
  ["Schinus","molle","California pepper tree","Evergreen. 35-50’ x 35-50’. Thin, fern-like leaves with a weeping habit, arranged bipinattely. Knobbly, reddish-brown bark. Bright red-pink peppercorns hang in bunches. ","Very easy tree.  Rugged and tolerant of many climates.   Don’t put water around trunk, it’s prone to oak root fungus when older. The California pepper is the easier and more lacy and willow like of the two pepper trees. ",35,50,35,50,false  ],
  ["Schinus","terebinthifolius","Brazilian pepper tree","Evergreen. 20-30’ x 20-30’. Compound leaves, with 5-9 oval shaped leaflets. Produces many clusters of bright red peppercorn-looking fruits. Gnarly gray-brown bark. ","Very easy tree.  Rugged and tolerant of many climates.   Don’t put water around trunk, it’s prone to oak root fungus when older.  ",20,30,20,30,false  ],
  ["Sequoia","sempervirens","Coast redwood","Evergreen. 70-100’ x 30’. In the city, these trees are fairly large, but often brownish and scraggly-looking. Look for trademark rough, reddish bark. ","Beautiful tree, but not planted much in so cal anymore.  They are NOT tolerant of the drought, heat, lack of rain, fog, etc.  ",70,100,30,nil,false  ],
  ["Washingtonia","robusta","Mexican fan palm","Evergreen. 60-100’ x 25’. Iconic Los Angeles tree, extremely tall and thin. Has a very tapered skinny trunk, green fan-shaped leaves and a dense crown.","Rugged and tough  This is more like a weed in some areas! :)  ",60,100,25,nil,false  ],
  ["Washingtonia ","filifera","California fan palm ","Evergreen. 35-65’ x 20-40’. Native to California, Arizona and Mexico. Similar to the common, tall, skinny Mexican fan palm, but with a stouter trunk, grey-green leaves and a more open crown. Mature fronds have sharp teeth. ","Native and tough.  BUT don’t plant near the ocean.  It will get diamond scale.  Keep it inland where it’s HOT. ",35,65,20,40,true  ],
  ["Chilopsis","linearis","Desert willow ","Deciduous. 20’ x 20’. CA native. Small, drought-tolerant tree, usually low-branching or multi-trunked. Thin, medium-green leaves and showy, pink trumpet-shaped flowers in late spring. Long, very thin tan seed capsule. Smooth gray bark. ","Great.  Beautiful ",20,nil,20,nil,true  ],
  ["Fraxinus","uhdei","Evergreen ash","Deciduous tree. 60-80’ x 45-60’. Very large tree that tends to have crowded branching. Compound leaves with 5-7 leaflets. Many papery tan seeds, hanging in huge clusters. Rough grayish bark. ","Nice, but gets HUGE and messy and big roots.   ",60,80,45,60,false  ],
  ["Ginkgo","biloba","Ginkgo","Deciduous. 35-80’ x 20-60’. Native to China. Very common street tree. Distinctive fan-shaped leaves with slight to very deep lobe in center. Ripe yellow-orange fruit smells like vomit. ","Easy, but make sure to specify and select a nice structured tree.  They have a tendency to have rangy and co-dominant trunks that are problems when they are older.  ",35,80,20,60,false  ],
  ["Koelreuteria","bipinnata","Chinese flame tree","Deciduous. 25-45’ x 25-45’. 12-18” long bi-pinnately compound leaf is yellow to red in fall. Serrated, oval-shaped leaflets. Yellow flowers late summer to early fall. Papery seedpods yellow-pink to red in fall. ","Easy.  This tree can benefit from some minor training pruning when young, but are a great tree. low maintenance and pretty.  But, can be invasive in gardens with open soil, where new trees will pop up. ",25,45,25,45,false  ],
  ["Lagerstroemia","indica","Common crape myrtle","Deciduous. 25’ x 25’. Very common street tree. Waxy green leaves, turning orange to red in fall. Many different cultivars, with flowers from white, purple, red, pink, magenta. Smooth patterned gray bark, often with variegated portions of reddish-brown peeling bark. ","I like Crape myrtle and am not a snob about these! ha :)  Some people don’t like them, because they think they’re a grandma tree. …but, they can be pleasing and enjoyable and in the right project/garden can be perfect.  They like it hot. ",25,nil,25,nil,false  ],
  ["Liriodendron","tulipifera","Tulip tree","Deciduous. 70’ x 35’. Very tall tree with distinctive large four-lobed leaves. Greenish-yellow flowers in spring. Fissured, gray-brown bark. ","beautiful tree but gets HUGE……give it LOTS of space.   But, I like this tree, one of the few big big trees we have. ",70,nil,35,nil,false  ],
  ["Pistacia","chinensis","Chinese pistache","Deciduous. 40-50’ x 30’. Pinnately-compound medium-green leaves, turning bright yellow to red in fall. Bright red or metallic blue fruits in large bunches. c","Likes it HOT and is SLOW growing but very very pretty when they finally mature.  I like Chinese Pistache. ",40,50,30,nil,false  ],
  ["Platanus","racemosa","California sycamore","Deciduous tree. 30-80’ x 20-60’. Deeply-lobed medium-green leaves are covered with minute hairs, and turn yellow-brown in late summer. White to grey bark flakes off the mottled trunk. Tip: Similar to London Plane tree— look for deeply-lobed, slightly fuzzy leaves. ","Always a great tree, native and beautiful.   Give it room to grow.  Also, a single trunk is better than a multi, which will expand out and grow in all directions and take more space.  Can tolerate challenging soils, moisture, turf, etc. ",30,80,20,60,false  ],
  ["Quercus","lobata","Valley oak","Deciduous tree. 75’ x 80’. CA native. Extremely large oak with deeply lobed leaves and large acorns. Bark is dark gray and furrowed. ","Needs water, very rangy when its young, but an amazing tree when older. ",75,nil,80,nil,true  ],
  ["Handroanthus","impetiginosus","Pink trumpet tree","Semi-deciduous. 35’ x 30’. Showy pink blooms in late winter before the leaves emerge. Long, thin seedpods have papery seeds. Tip: Similar to Golden Trumpet tree—look for light green leaves.","Very pretty, likes it hot, will stay relatively smaller than other species",35,nil,30,nil,false  ],
  ["Jacaranda","mimosifolia","Jacaranda","Semi-deciduous. 40’ x 40’. Showy purple flowers in early summer. Bipinnately compound, fern-like leaves. 2”-3” seedpods, green at first, brown when ripe. ","Working horse, easy, can tolerate a lot of challenging growing conditions, etc. ",40,nil,40,nil,false  ],
  ["Ulmus","parvifolia","Chinese elm","Semi-deciduous. 40’-60’ x 50’-70’. Large tree with long, weeping branches and medium-green leaves with toothed edges. Variegated, flaking bark with many colors, including light gray, red and white. ","Working horse, easy, can tolerate a lot of challenging growing conditions, etc. ",40,60,50,70,false  ],
  ["Cassia","leptophylla","Gold medallion tree ","Semi-Evergreen. 25’ x 20’. Medium tree with bi-pinnate medium green leaves, with pointed tips and no terminal leaf. Terminal clusters of large yellow flowers, followed by long, bean-like green or brown seedpods. Tip: Similar to Tipu tree—look for leaves with pointed tips and no terminal leaf, or long bean-like seedpod. ","Beautiful smaller tree.  Needs training pruning when  young for its floppy and congested branching, but can be a pretty tree when mature.  ",25,nil,20,nil,false  ],
  ["Tipuana","tipu","Tipu","Semi-evergreen. 50’ x 50’. Large, fast-growing tree with long thin branches. Bi-pinnate medium green leaves with many oval-shaped leaflets and terminal leaf. Bright, butter-yellow flowers. Green to brown papery seed pods. Tip: Similar to Gold Medallion tree—look for oval-shaped leaves with terminal leaf and papery seedpods. ","Working horse, easy, can tolerate a lot of challenging growing conditions, etc.  Can get large invasive roots over time.",50,nil,50,nil,false  ]
]

trees.each do |tree|
	Plant.create( 
		genus: tree[0], 
		species: tree[1], 
		common_name: tree[2], 
		description: tree[3], 
		notes: tree[4], 
		height_min: tree[5], 
		height_max: tree[6], 
		width_min: tree[7], 
		width_max: tree[8], 
		ca_native: tree[9]
		)
end




