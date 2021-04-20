class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) # find_byメソッドを使用する場合は引数にカラムを指定する必要があるので、User.find_by(id: params[:id])と記述する。
  end
end
