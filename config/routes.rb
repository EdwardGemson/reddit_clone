Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "r_all", to: "home#r_all"

  resources :users, only: [:new, :create, :update, :show, :destroy]
  resources :comments, only: [:new, :create, :update, :show, :destroy]
  resources :posts, only: [:new, :create, :update, :show, :destroy]
end
