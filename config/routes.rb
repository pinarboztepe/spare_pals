Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pals, only: [:index, :new, :create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  resources :pals, only: [:index, :new, :show] do
  resources :bookings, only: [:new, :create]
  end
=======
  resources :pals, only: [:show]
>>>>>>> a4d8584e047e522b923a75289c00bff48889109b
end
