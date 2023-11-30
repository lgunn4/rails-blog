class PostsController < ApplicationController
  def show
    @post = Post.find_by(handle: params[:handle])
  end
end
