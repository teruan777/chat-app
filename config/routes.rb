Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  root 'rooms#index'
=======
  # get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "rooms#index"
>>>>>>> Stashed changes
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
