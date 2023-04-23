class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:category_id])
    @posts = @category.posts
  end
end
