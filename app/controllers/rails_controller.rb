class RailsController < ApplicationController
  def csrf_token
    response.headers["X-CSRF-Token"] = form_authenticity_token

    response
  end
end
