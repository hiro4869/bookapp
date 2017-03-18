class BooksController < ApplicationController
  before_action:set_book, only: [:show, :edit, :update, :destroy]

  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render new_book_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to edit_book_path(@book.id)
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(
      :title, :price, :description, :rate,
      comments_attributes: [:id, :name, :content, :_destroy]
      #,quotations_attributes: [:id, :body,:_destroy]
  )
  end

  def set_book
    @book = Book.find(params[:id])
  end
end