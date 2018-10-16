Rails.application.routes.draw do
	get 'home/front'

	get 'adminplants/' => 'plants#adminindex', as: 'plants'
	get 'plants/' => 'plants#index', as: 'plants_admin'
	get 'plants/new' => 'plants#new', as: 'new_plant'
	post 'plants/new' => 'plants#create'
	get 'plants/show/:id' => 'plants#show', as: 'show_plant'
	get 'plants/edit/:id' => 'plants#edit', as: 'edit_plant'
	patch 'plants/edit/:id' => 'plants#update'
	patch 'plants/uploadimage/:id' => 'images#upload', as: 'upload_plant_image'
	delete  '/image/:id' => 'images#destroy', as: 'destroy_image'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'home#front'
  
end
