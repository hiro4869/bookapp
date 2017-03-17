class QuotationsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @quotation = @book.quotations.create(quotation_params)
    redirect_to book_path(@book.id)
  end

  def destroy
    @quotation = Quotation.find(params[:id])
    @quotation.destroy
    redirect_to edit_book_path(params[:book_id])
  end

  private

  def quotation_params
    params[:quotation].permit(:body)
  end
end