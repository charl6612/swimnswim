Rails.application.routes.draw do
  get 'rentals/new'
  get 'rentals/create'
  get 'rentals/update'
  get 'rentals/destroy'
  get 'pools/search'
  get 'pools/index'
  get 'pools/new'
  get 'pools/create'
  get 'pools/show'
  get 'pools/edit'
  get 'pools/update'
  get 'pools/destroy'
  get 'users/dashboard'
  get 'users/edit'
  get 'users/update'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
