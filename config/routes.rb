Rails.application.routes.draw do
  resources :pools
  get 'rentals/new'
  get 'rentals/create'
  get 'rentals/update'
  get 'rentals/destroy'

  get 'users/dashboard'
  get 'users/edit'
  get 'users/update'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
