class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  force_ssl

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
helper_method :current_user

#http://railscasts.com/episodes/270-authentication-in-rails-3-1?view=asciicast
# made use of rails 3 to create a user authentication from scratch
