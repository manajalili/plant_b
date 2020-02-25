Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plants, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
    resources :users, only: [:index, :show]
  end

  resources :bookings, only: [:destroy]

end
