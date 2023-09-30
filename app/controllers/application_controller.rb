class ApplicationController < ActionController::Base
  before_action :set_header_details

  def set_header_details
    @categories = Category.all
    @blog_configuration = ::Configuration.first
    @home_icon_color = params[:category_id].present? ? "is-link is-light" : "is-link"
  end
end
