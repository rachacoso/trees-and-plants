class Plant < ApplicationRecord
	has_many :plant_adjectives
	has_many :adjectives, through: :plant_adjectives, dependent: :destroy
	has_many :plant_colors
	has_many :colors, through: :plant_colors, dependent: :destroy
	has_many :plant_growth_rates
	has_many :growth_rates, through: :plant_growth_rates, dependent: :destroy
	has_many :plant_leafing_types
	has_many :leafing_types, through: :plant_leafing_types, dependent: :destroy
	has_many :plant_textures
	has_many :textures, through: :plant_textures, dependent: :destroy
	has_many :plant_exposures
	has_many :exposures, through: :plant_exposures, dependent: :destroy
	has_many :plant_phs
	has_many :phs, through: :plant_phs, dependent: :destroy
	has_many :plant_sunset_zones
	has_many :sunset_zones, through: :plant_sunset_zones, dependent: :destroy
	has_many :plant_soil_textures
	has_many :soil_textures, through: :plant_soil_textures, dependent: :destroy
	has_many :plant_salinity_tolerances
	has_many :salinity_tolerances, through: :plant_salinity_tolerances, dependent: :destroy
	has_many :plant_seaside_tolerances
	has_many :seaside_tolerances, through: :plant_seaside_tolerances, dependent: :destroy
	has_many :plant_root_damage_potentials
	has_many :root_damage_potentials, through: :plant_root_damage_potentials, dependent: :destroy
	has_many :plant_soil_moistures
	has_many :soil_moistures, through: :plant_soil_moistures, dependent: :destroy
	has_many :plant_landscape_applications
	has_many :landscape_applications, through: :plant_landscape_applications, dependent: :destroy
	has_many :plant_landscape_uses
	has_many :landscape_uses, through: :plant_landscape_uses, dependent: :destroy
	has_many :plant_habits
	has_many :habits, through: :plant_habits, dependent: :destroy
	has_many :plant_branch_strengths
	has_many :branch_strengths, through: :plant_branch_strengths, dependent: :destroy
	has_many :plant_shapes
	has_many :shapes, through: :plant_shapes, dependent: :destroy
	has_many :plant_litter_types
	has_many :litter_types, through: :plant_litter_types, dependent: :destroy
	has_many :images

	scope :with_attached_images, -> { includes(:images).merge(Image.with_attached_file) }

	default_scope { order(genus: :asc, species: :asc) }

	# scope :growth_rates, -> (ids) { where(growth_rate.in => ids) }
	scope :with_growth_rates, -> (ids) { joins(:growth_rates).where(growth_rates: { id: ids } ) }
	scope :with_colors, -> (ids) { joins(:colors).where(colors: { id: ids } ) }
	scope :with_leafing_types, -> (ids) { joins(:leafing_types).where(leafing_types: { id: ids } ) }
	scope :with_exposures, -> (ids) { joins(:exposures).where(exposures: { id: ids } ) }
	scope :with_phs, -> (ids) { joins(:phs).where(phs: { id: ids } ) }
	scope :with_soil_textures, -> (ids) { joins(:soil_textures).where(soil_textures: { id: ids } ) }
	scope :with_soil_moistures, -> (ids) { joins(:soil_moistures).where(soil_moistures: { id: ids } ) }
	scope :with_landscape_applications, -> (ids) { joins(:landscape_applications).where(landscape_applications: { id: ids } ) }
	scope :with_landscape_uses, -> (ids) { joins(:landscape_uses).where(landscape_uses: { id: ids } ) }
	scope :with_shapes, -> (ids) { joins(:shapes).where(shapes: { id: ids } ) }
	scope :with_habits, -> (ids) { joins(:habits).where(habits: { id: ids } ) }
	scope :with_salinity_tolerances, -> (ids) { joins(:salinity_tolerances).where(salinity_tolerances: { id: ids } ) }
	scope :with_seaside_tolerances, -> (ids) { joins(:seaside_tolerances).where(seaside_tolerances: { id: ids } ) }
	scope :width, -> (min,max) { where("(width_min BETWEEN ? AND ?) OR (width_max BETWEEN ? AND ?) ", min, max, min, max)}
	scope :height, -> (min,max) { where("(height_min BETWEEN ? AND ?) OR (height_max BETWEEN ? AND ?) ", min, max, min, max)}

	def check_property(property, value)
		case property
		when 'color'
			return true if self.colors.find_by_id(value)
		when 'growth_rate'
			return true if self.growth_rates.find_by_id(value)
		when 'leafing_type'
			return true if self.leafing_types.find_by_id(value)
		when 'texture'
			return true if self.textures.find_by_id(value)
		when 'adjective'
			return true if self.adjectives.find_by_id(value)
		end
	end

	def scientific_name
		if self.species.present?
			return "#{self.genus.capitalize} #{self.species}"
		else
			return self.genus.capitalize
		end
	end
	def display_width
		if self.width_min
			if self.width_max
				return "#{self.width_min} - #{self.width_max}"
			else
				return "#{self.width_min}"
			end
		else
			return false
		end
	end
	def display_height
		if self.height_min
			if self.height_max
				return "#{self.height_min} - #{self.height_max}"
			else
				return "#{self.height_min}"
			end
		else
			return false
		end
	end
	def display_sunset_zones
		self.sunset_zones.to_a.map(&:sunset_zone).sort.slice_when { |prev, curr| curr != prev.next }.to_a
	end
	def size_category
	end

	def aka?
		return true if 	self.synonyms.present? ||
						self.additional_common_names.present?
	end
	def size_attributes?
		return true if 	self.display_height || 
						self.display_width || 
						self.growth_rates.exists?
	end
	def visual_attributes?
		return true if 	self.leafing_types.exists? ||
						self.shapes.exists? ||
						self.habits.exists?	||
						self.textures.exists?
	end
	def location_attributes?
		return true if 	self.sunset_zones.exists? || 
						self.exposures.exists? || 
						self.seaside_tolerances.exists?
	end
	def soil_concerns?
		return true if 	self.phs.exists? || 
						self.soil_textures.exists? || 
						self.salinity_tolerances.exists? ||
						self.soil_moistures.exists?
	end
	def landscape_attributes?
		return true if 	self.landscape_applications.exists? || 
						self.landscape_uses.exists?
	end
	def nuisance_concerns?
		return true if 	self.branch_strengths.exists? ||
						self.root_damage_potentials.exists? ||
						self.litter_types.exists?
	end
	def gallery_size
		if self.images.exists?
			if self.images.count > 4
				return "five-up"
			else
				return "four-down"
			end
		else
			return "four-down"
		end
	end

end
