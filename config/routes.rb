Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root to: 'posts#index'

  # devise_for :users
  resources :users, only: [:index, :show] 
  resources :posts do
    post '/like', to: 'reactions#like', as: :like_action
    post '/dislike', to: 'reactions#dislike', as: :dislike_action
    resources :comments
  end
end
