Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users
  
  resources :posts do 
    resources :comments
    member do 
      put :update_status
    end
  end
 
  resources :follows
  
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

  get 'home/friends_post'
  get 'home/private_post'
  get 'home/liked_post'
  get 'home/my_posts'
  get 'home/followers'
  get 'home/followees'

  resources :likes, only: [:create, :destroy]
end
