# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  helper_method :signed_in?, :current_user

  def sign_in(user)
    session[:uid] = user
  end

  def sign_out
    session[:uid] = nil
  end

  def current_user
    @current_user ||= User.find_by_id(session[:uid])
  end

  def anonymous?
    current_user.nil?
  end

  def signed_in?
    !anonymous?
  end
  

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
