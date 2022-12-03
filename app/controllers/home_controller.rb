class HomeController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @user = User.find(params[:id]) if user_signed_in?
  end

  def friends_post
  end

  def private_post
    @posts = current_user.posts
  end

  def liked_post
    @posts = current_user.liked_posts
  end

  def my_posts
    @posts = current_user.posts
  end

end
