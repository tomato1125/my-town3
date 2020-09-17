class UsersController < ApplicationController

  def index
    user = User.find(params[:id])
  end

  def show
    user = User.find(params[:id])
    @name = user.name
    @posts = user.posts
    @image = user.image
  end
end
