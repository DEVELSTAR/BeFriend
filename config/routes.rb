Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users, only: [:show, :edit, :update, :index]
  resources :posts
  resources :follows
  
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

end
