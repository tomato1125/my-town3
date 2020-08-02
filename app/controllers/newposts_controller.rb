class NewpostsController < ApplicationController
  def index
    @posts = Post.includes(:user).page(params[:page]).per(4).order("created_at DESC")
  end
end
