class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:category_id])
    @posts = @category.posts.where(published: true)
  end
end
