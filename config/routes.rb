Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :comments, only: [:create]
    resources :bookings
    resources :reviews, only: [:create]
  end
end
