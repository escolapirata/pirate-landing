class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :get_entities
  helper_method :get_activities

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def get_entities
    @entities = Entity.all
  end
  def get_activities
    @activities = Activity.all
  end
end
