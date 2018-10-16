class ImagesController < ApplicationController
	before_action :set_plant, only: [:upload]
	before_action :get_image_and_plant, only: [:destroy]

	def upload
		if params[:plant][:images_featured]
			image = Image.create(image_type: 'featured')
			image.attach(params[:plant][:images_featured])
			@plant.images << image
		end
		if params[:plant][:images_other]
			image = Image.create(image_type: 'other')
			image.attach(params[:plant][:images_other])
			@plant.images << image
		end
		respond_to do |format|
			format.html { 
				redirect_to edit_plant_url(@plant)
			}
			format.js 
		end
	end

	def destroy
		@image.destroy
		respond_to do |format|
			format.html { 
				redirect_to edit_plant_url(@plant)
			}
			format.js 
		end
	end
	private

	def get_image_and_plant
		@image = Image.find_by_id(params[:id])
		@plant = @image.plant
	end
	def set_plant
		# if @current_user.administrator
		# 	@plant = Order.find(params[:id])
		# else
			@plant = Plant.find_by_id(params[:id])
		# end
	end

end