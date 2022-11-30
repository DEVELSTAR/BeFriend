class PostsController < ApplicationController

	def index
		@posts = Post.all.order(created_at: :desc)
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		redirect_to @post
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