class CategoriesController < ApplicationController
  def index
    category = Post.where(category_id: params[:category_id])
  end

  def show
    @categories = Post.where(category_id: params[:category_id])
  end
end
