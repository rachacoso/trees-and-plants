class PlantsController < ApplicationController
	before_action :set_plant, only: [:upload]

	def upload
		case params[:type]
		when 'featured'
			image = Image.create(image_type: 'featured')
			image.attach(params[:file])
			@plant.images << image
		when 'other'
			image = Image.create(image_type: 'other')
			image.attach(params[:file])
			@plant.images << image
		end

	end

	private
	def set_plant
		# if @current_user.administrator
		# 	@plant = Order.find(params[:id])
		# else
			@plant = Plant.find_by_id(params[:id])
		# end
	end

end