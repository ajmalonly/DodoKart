Rails.application.routes.draw do
  devise_for :users
  root to: "itineraries#index"
  resources :stations, only: [:index]
  resources :itineraries, only: [:index, :show, :edit, :create, :update] do
    resources :tickets, only: [:new, :create]
  end
  resources :tickets, only: [:index]
  get "info", to: "pages#info", as: :info
  get "profile", to: "pages#profile", as: :profile
end
