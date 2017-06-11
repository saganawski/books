class CommentsController < ApplicationController
	def create
		user = User.find(session[:user_id])
		@book= Book.find(params[:book_id])
		@comment = @book.comments.new(comment_params)
		@comment.commenter_id = user.id

		if @comment.save
			redirect_to book_path(@book)
		else
			@errors = ["Comments Cant be blank"]
			redirect_to book_path(@book)
		end

	end

	private
	def comment_params
		params.require(:comment).permit(:text)
	end
end



