class ApplicationController < ActionController::Base
    before_action :set_header_details

    def set_header_details
        @categories = Category.all
        @blog_configuration = ::Configuration.first
    end
end
