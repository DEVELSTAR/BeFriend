class CommentsController < ApplicationController
    before_action :authenticate_user!

	def create
	    @comment = Comment.create(comment_params)
	    @comment.user = current_user
	    redirect_to request.referrer
	end

	def destroy
	    @comment = Comment.find(params[:id])
	    @comment.destroy
	    redirect_to request.referrer
    end


	private

	def comment_params
		params.require(:comment).permit(:body, :post_id, :user_id)
	end
end