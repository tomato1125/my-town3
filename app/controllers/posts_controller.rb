class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
    @prefecture = Prefecture.all
  end

  def create
    Post.create(post_params)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  private
  def post_params
<<<<<<< Updated upstream
    params.require(:post).permit(:title, :image, :content, :prefecture_id, :name).merge(user_id: current_user.id)
=======
    params.require(:post).permit(:title, :image, :content, :prefecture_id, :address, :latitude, :longtitude, :maptitle).merge(user_id: current_user.id)
>>>>>>> Stashed changes
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end

# (:title, :image, :content, :prefecture_id,)