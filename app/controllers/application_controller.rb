class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :null_session

  helper_method :current_user
 
  private
 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def restrict_access
    if !current_user
      flash[:alert] = "You must log in."
      redirect_to root_path
    end
  end

end
