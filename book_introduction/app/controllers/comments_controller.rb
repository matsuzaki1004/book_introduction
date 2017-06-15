class CommentsController < ApplicationController

	def create
		params.permit!
		@book = Book.find(params[:book_id])
		@comment = Book.find(params[:book_id]).comments.new(params[:comment])
		if @comment.save
			redirect_to book_path(@book)
	    else
	    	render :template => "books/show"
	    end	

	    def destroy
	    	@book = Book.find(params[:book_id])
	    	@comment = @book.comments.find(params[:id])
	    	@comment.destroy
	    	redirect_to book_path(@book)
	    end
	end


	
	
end
