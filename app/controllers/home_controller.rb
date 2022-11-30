class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def friends_post
  end

  def private_post
    @posts = current_user.posts
  end
end
