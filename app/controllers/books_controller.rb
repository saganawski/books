class BooksController < ApplicationController
	def index 
		@books = Book.order(rank: :desc).limit(100)
	end
end