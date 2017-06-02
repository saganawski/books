class BooksController < ApplicationController
	def index 
		@books = Book.order(rank: :desc).limit(100)
	end

	def show
		@book = Book.find(params[:id])
	end


end