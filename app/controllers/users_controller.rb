class UsersController < ApplicationController
  # before_action :user_params

  def index
    user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @posts = @user.posts
    @image = @user.image
    @introduce = @user.introduce
    @prefecture = @user.prefecture.name
  end

  # private
  # def user_params
  #   params.require(:user).permit(:name, :email, :image, :introduce, :prefecture_id)
  # end
end
