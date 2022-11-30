class UsersController < ApplicationController

    def index
      @users = User.all.order(created_at: :desc)
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

	def follow
	  @user = User.find(params[:id])
	  current_user.followees << @user
	  redirect_back(fallback_location: user_path(@user))
	end

	def unfollow
	  @user = User.find(params[:id])
	  current_user.followed_users.find_by(followee_id: @user.id).destroy
	  redirect_back(fallback_location: user_path(@user))
	end


	private

	def user_params
	  params.require(:user).permit(:name, :bio, :email, :phone)
	end
end