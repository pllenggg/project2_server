Rails.application.routes.draw do
  resources :bookings
  resources :services
  resources :retails
  resources :customers
  resources :users
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
