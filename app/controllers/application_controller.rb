class ApplicationController < ActionController::Base
  before_filter :allow_ajax_request
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def allow_ajax_request
    headers['Access-Control-Allow-Origins'] = '*'
    headers['Access-Control-Allow-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = '*'
  end
end
