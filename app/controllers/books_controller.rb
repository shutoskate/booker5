class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index]  # deviseのメソッドで「ログインしていないユーザーをログイン画面に送る」メソッド


  def index
    
  end

  def new
    @book = Book.new #@bookはビューへ渡す為
  end

  def create
    @book = Book.create(book_params)
    @book.user_id = current_user.id # user_idの情報はフォームからはきていないので、deviseのメソッドを使って「ログインしている自分のid」を代入
    redirect_to root_path
  end

  def show
    @book = Book.find(params[:id])
  end

  def rank
    @book = Book.find(Favorite.group(:book_id).order('count(book_id) desc').limit(3).pluck(:book_id))
  end

  def edit
    @book = Book.find(params[:id])
  end

  def updata
    book = Book.find(prams[:id])
    book.updata(book_params)
    redirect_to book_path(Book.id)
  end



  def show_book
    @book = Book.includes(:user)
  end




  private

  def book_params
    params.require(:book).permit(:title, :kill, :author, :image).merge(user_id: current_user.id) 
    #Web画面上から内部へ流れてきた値を安全に受け取る仕組み
  end



end
