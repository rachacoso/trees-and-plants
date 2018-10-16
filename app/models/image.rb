class Image < ApplicationRecord
	belongs_to :plant

	has_one_attached :file
	delegate_missing_to :file

	scope :featured, -> { where(image_type: 'featured') }
	scope :other, -> { where(image_type: 'other') }
	scope :randomize, -> { order('random()') }
end