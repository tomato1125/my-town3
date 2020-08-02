class CategoriesController < ApplicationController

  def index
    category = Post.where(category_id: params[:category_id])
  end

  def show
    @category = Category.find(params[:category_id])
    @categories = Post.where(category_id: params[:category_id])
  end

end
