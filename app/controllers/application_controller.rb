class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  
  def is_admin
    if (current_user&&(current_user.uid=="10153629801172736" || current_user.uid == "10153542298915875"))
      return true
    else
      return false
    end
  end
end
