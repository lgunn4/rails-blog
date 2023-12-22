class HomeController < ApplicationController
  def index
    @posts_by_year = Post.posts_by_year
  end
end
