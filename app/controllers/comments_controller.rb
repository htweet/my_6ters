class CommentsController < ApplicationController

	def create
		micropost = Micropost.find(params[:comment][:micropost_id])
		micropost.comments.create(comment_params)
		redirect_to micropost
	end

	private

	def comment_params
		params.reqiure(:comment).permit(:body)
	end
end
