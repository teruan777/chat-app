Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  root 'rooms#index'
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
