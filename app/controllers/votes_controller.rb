class VotesController < ApplicationController
	def create
		user = User.find(session[:user_id])
		@book = Book.find(params[:book_id])
		@vote = @book.votes.create(user_id: user.id)

		redirect_to book_path(@book)
	end

	def destroy
		vote = Vote.find(params[:id]).destroy

		redirect_to book_path(params[:book_id])
	end	
end