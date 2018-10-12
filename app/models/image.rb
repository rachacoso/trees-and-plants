class Image < ApplicationRecord
	belongs_to :plant

	has_one_attached :file
	delegate_missing_to :file

	scope :featured, -> { where(image_type: 'featured') }
	scope :whole, -> { where(image_type: 'whole') }
	scope :closeup, -> { where(image_type: 'closeup') }
	scope :wide, -> { where(image_type: 'wide') }
end