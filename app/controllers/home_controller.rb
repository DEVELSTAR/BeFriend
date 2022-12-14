class HomeController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @user = current_user if user_signed_in?
  end

  def friends_post
  end

  def private_post
    @posts = current_user.posts.where(status: "private")
    @posts = @posts.all.order(created_at: :desc)
  end

  def liked_post
    @posts = current_user.liked_posts.all.order(created_at: :desc)
  end

  def my_posts
    @posts = current_user.posts.all.order(created_at: :desc)
    @liked_posts = current_user.liked_posts.all
    @private_posts_count = current_user.posts.where(status: "private").count 
  end

end
