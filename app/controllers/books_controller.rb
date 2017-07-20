class BooksController < ApplicationController
	def index 
		@books = Book.order(rank: :desc, title: :asc).limit 100
	
	end

	def show
		@book = Book.find(params[:id])
		
		links = @book.links
		@link = links[0].link.html_safe	
	end


end