class BooksController < ApplicationController
  def index
    @book = Book.all #Book modelからだよ
  end

  def new
    @book = Book.new #@booksはビューへ渡す為
  end

  def create
    Book.create(book_params)
    redirect_to root_path
  end


end
