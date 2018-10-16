class BooksController < ApplicationController
  before_action :set_book, except: %i(index new create)
  def index
    @books = Book.all
    render json: @books
  end

  def show
    render json: @book
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
  end

  def edit; end

  def update
    @book.update(book_params)
  end

  def destroy
    @book.destroy
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book)
          .permit(:title, :author, :impression, :total_page, :now_page)
  end
end
