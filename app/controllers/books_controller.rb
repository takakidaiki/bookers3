class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def create
  end

  def show
    @book = Book.find(params{:id})
  end

  def edit
    @book = Book.find(params{:id})
  end
  
  def update
  end
end
