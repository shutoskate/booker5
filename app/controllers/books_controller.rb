class BooksController < ApplicationController
  def index
  end

  def new
    @book = Book.new #@booksはビューへ渡す為
  end

  def create
    @book = Book.create(book_params)
    redirect_to root_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def show_book
    @book = Book.all#Book modelからだよ
  end



  private
  def book_params
    params.require(:book).permit(:title, :kill, :author, :image) #Web画面上から内部へ流れてきた値を安全に受け取る仕組み
  end



end
