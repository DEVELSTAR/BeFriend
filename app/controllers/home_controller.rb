class HomeController < ApplicationController
  def index
    @followers = current_user.followers
  end
end
