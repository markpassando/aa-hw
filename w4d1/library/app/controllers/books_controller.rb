class BooksController < ApplicationController
  def index
    @books = Book.all

    render :index
  end

  def new
    render :new
  end

  def create
    Book.create(book_params)
    redirect_to books_url
  end

  def destroy
    id = params[:id]
    Book.find(id).destroy
    params
    #fail
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
