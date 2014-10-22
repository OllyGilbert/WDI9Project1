class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :create_search_object

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: "You can't access this page"
  end
  
  helper_method :current_user



  def create_search_object
    @q = Classroom.search(params[:q])
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
