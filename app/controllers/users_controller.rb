class UsersController < ApplicationController

  def show
    @user = User.find(params[:id]) #ユーザー情報
    @book = @user.books #ログイン中のユーザーの投稿
  end

end
