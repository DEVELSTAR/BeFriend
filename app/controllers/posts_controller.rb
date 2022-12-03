class PostsController < ApplicationController
    before_action :authenticate_user!, :except => [:index]

	def index
		@posts = Post.all.order(created_at: :desc)
		@user = current_user
	end

	def update_status
		@post = Post.find(params[:id])
		@post.update(status: params[:status])
		  @post.update(status: params[:status])
		redirect_to request.referrer
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		redirect_to posts_path
	end

	def destroy
		@post = current_user.posts.find(params[:id])
		@post.destroy
	end


	private

	def post_params
        params.require(:post).permit(:title, :description, :user_id, :status)
	end
end