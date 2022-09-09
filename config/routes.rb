Rails.application.routes.draw do
  devise_for :users
  root to: "itineraries#index"
  resources :stations, only: [:index]
  resources :itineraries, only: [:show, :edit, :create, :update] do
    resources :tickets, only: [:new, :create]
  end
  resources :tickets, only: [:index]
  get "itinaries", to: "pages#itineraries", as: :itinaries

  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
