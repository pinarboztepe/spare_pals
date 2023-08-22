Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :pals, only: [:index, :new, :create, :show] do
    # This bookings routes are used to create a new booking with a pal id
    resources :bookings, only: [:new, :create]
  end

  # This bookings routes is to show all current_user bookings (without any pal id)
  resources :bookings, only: [:index]
end
