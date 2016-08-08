class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    unless logged_in?
      flash[:error] = "YOU MUST BE LOGGED IN TO ACCESS!"
      redirect_to new_session_path
    end
  end

end
