class ApplicationController < ActionController::Base  
  protect_from_forgery
  
  helper_method :current_user
  
  def authenticate
    authenticate_or_request_with_http_basic do |email, password|
      @current_user = User.authenticated?(email, password)
    end
  end
  
  def current_user
    @current_user
  end
end
