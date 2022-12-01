Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users
  
  resources :posts do 
    resources :comments
  end

  resources :follows
  
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

  get 'home/friends_post'
  get 'home/private_post'
  get 'home/liked_post'
  get 'home/my_posts'

  resources :likes, only: [:create, :destroy]
end
