class ApplicationController < ActionController::Base
   def login_check
    @current_user = nil
    if !session[:user_id].nil?
      @current_user = User.find(session[:user_id])
    else
      redirect_to "/user/login"
    end
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 #  protect_from_forgery with: :exception
end
