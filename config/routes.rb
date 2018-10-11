Rails.application.routes.draw do
  get 'home/front'


  get 'plants/show/:id' => 'plants#show', as: 'show_plant'
  get 'plants/edit/:id' => 'plants#edit', as: 'edit_plant'
  patch 'plants/edit/:id' => 'plants#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#front'
  
end
