class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :get_entities
  helper_method :get_activities
  helper_method :require_admin
  helper_method :is_admin

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def get_entities
    @entities = Entity.all
  end
  def get_activities
    @activities = Activity.all
  end
  def require_admin
    if !(current_user&&current_user.uid=="10153629801172736")
    redirect_to root_path
    end
  end
  def is_admin
    if current_user&&current_user.uid=="10153629801172736"
      return true
    else
      return false
    end
  end
end
