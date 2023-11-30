class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(handle: params[:handle])
    @posts = @category.posts.where(published: true)
  end
end
