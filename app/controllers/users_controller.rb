class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
    	@users = User.all
    end
    
	def show
	  @user  = User.find(params[:id])
	end

    def edit
	  @user = User.find(params[:id])
	end

	def update
	  current_user.update(user_params)
	  redirect_to current_user
	end
	
end