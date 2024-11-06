class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.find(params{:id})
  end

  def edit
    @book = Book.find(params{:id})
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def book_params
    book.require(:book).permit(:title, :body)
  end
end
