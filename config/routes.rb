Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users
  resources :posts
  resources :follows
  
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

  get 'home/friends_post'
end
