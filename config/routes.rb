Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plants do
    resources :bookings, only: [:create]
    resources :users, only: [:index, :show]
  end

  resources :bookings, only: [:edit, :update]

  resources :bookings, only: [:index, :destroy]
end
