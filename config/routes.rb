Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pals, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :pals, only: [:index, :new, :show] do
  resources :bookings, only: [:new, :create]
  end
end
