Rails.application.routes.draw do
  resources :synergies
  resources :tools
  resources :characters
  resources :mains

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'characters#index'
	root 'mains#index'



end
