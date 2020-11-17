class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def edit
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.requiere(:book).permit(:title, :author, :status, :lendend_at, :returned_at)
  end

end
