class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :require_login 
  

  def show
    if current_user
    else
      redirect_to 'login'
    end
  end

  def current_user
    @username = session[:name]
  end

  private 

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/login' # halts request cycle
    end
  end

  def logged_in?
    current_user != nil
  end

end
