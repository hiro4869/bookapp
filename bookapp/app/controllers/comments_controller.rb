class CommentsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.create(comment_params)
    redirect_to book_path(@book.id)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to edit_book_path(params[:book_id])
  end


  private
    def comment_params
      params[:comment].permit(:name, :content)
    end


end
