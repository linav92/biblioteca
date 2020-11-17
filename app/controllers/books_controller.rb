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
end
