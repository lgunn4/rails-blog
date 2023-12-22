class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(handle: params[:handle])
    @posts_by_year = @category.posts_by_year
  end
end
