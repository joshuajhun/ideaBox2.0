class ApplicationController < ActionController::Base
  before_filter :allow_ajax_request
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def allow_ajax_request
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Request-Method'] = %w{GET POST OPTIONS}.join(',')
    headers['Access-Control-Allow-Headers'] = '*'
  end
end
