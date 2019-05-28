Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'users/dashboard'
  get 'users/edit'
  get 'users/update'
  resources :pools do
  resources :rentals, only: [ :index, :new, :create ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
