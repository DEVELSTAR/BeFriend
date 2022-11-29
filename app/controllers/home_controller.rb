class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def friends_post
  end

end
