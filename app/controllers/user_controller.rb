class UserController < ApplicationController
  def signup
  end

  def signup_complete
    u = User.new
    u.id_user = params[:id_user]
    u.username = params[:username]
    u.address = params[:address]
    u.phone_number = params[:phone_number]
    u.email = params[:email]
    if params[:password] == params[:retype_password]
      u.password = params[:password]
      if u.save
       #flash[:alert] = "회원가입이 성공적으로 완료되었습니다."
        redirect_to "/user/signup_complete_page"
      else
        flash[:alert] = u.errors.values.flatten.join(' ')
        redirect_to :back
      end
    else
      flash[:alert] = "Password doesn't match."
      redirect_to :back
    end
  end
  
  def signup_complete_page
     @name = User.last.username
     @id = User.last.id_user
     @addr = User.last.address
     @phone = User.last.phone_number
     @email = User.last.email
  end

  def login
  end

  def login_complete
    user = User.where(id_user: params[:id_user])[0]
    if user.nil?
      flash[:alert] = "아이디 또는 비밀번호를 잘못 입력하셨습니다."
      redirect_to :back
    elsif user.password != params[:password]
      flash[:alert] = "아이디 또는 비밀번호를 잘못 입력하셨습니다."
      redirect_to :back
    else
      session[:user_id] = user.id
    #  flash[:alert] = "성공적으로 로그인하였습니다."
      redirect_to "/"
    end
  end

  def logout_complete
    reset_session
   # flash[:alert] = "성공적으로 로그아웃하였습니다."
    redirect_to "/"
  end

end
