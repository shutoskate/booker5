class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @books = @user.books #ログイン中のユーザーの投稿
  end


  def show
    #@user = User.find(params[:id])
    @user = User.find(current_user.id)#ユーザー情報
    @books = @user.books #ログイン中のユーザーの投稿
    @favorite_books = @user.favorite_books 
  end

  

end
