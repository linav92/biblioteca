class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to books_path, notice: 'El libro ha sido creado exitosamente.'
    else
      flash.now[:alert] = 'El libro no ha sido creado.'
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to books_path, notice: 'El libro ha sido actualizado.'
    else
      flash.now[:alert] = 'El libro no ha sido actualizado.'
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: 'El libro ha sido eliminado'
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :status, :lendend_at, :returned_at)
  end

end
