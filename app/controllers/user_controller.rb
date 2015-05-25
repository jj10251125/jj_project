class UserController < ApplicationController

before_action :login_check
skip_before_action :login_check, :only => [:signup, :signup_complete, :signup_complete_page, :login, :login_complete, :logout_complete]

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
        redirect_to "/user/signup_complete_page"
      else
        flash[:alert] = u.errors.values.flatten.join(' ')
        redirect_to :back
      end
    else
      flash[:alert] = "패스워드가 맞지 않습니다."
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
      if session[:user_id] == 1
         flash[:alert] = "관리자 기능으로 로그인하였습니다."
      else
         flash[:alert] = "성공적으로 로그인하였습니다."
      end
      redirect_to "/"
    end
  end

  def logout_complete
    reset_session
    flash[:alert] = "성공적으로 로그아웃하였습니다."
    redirect_to "/"
  end

  def review_write
  end

  def review_complete
    post = Review.new
    post.user_id = session[:user_id]
    post.title = params[:review_title]
    post.content = params[:review_content]
    post.image = params[:image]
    if post.save
      flash[:alert] = "후기를 작성해주셔서 감사합니다."
      redirect_to "/jshoes/review_show/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def my_cart
  end

  def my_info
    @user = User.find(session[:user_id])
  end
  
  def edit_info
    u = User.find(session[:user_id])   
    u.username = params[:username]
    u.address = params[:address]
    u.phone_number = params[:phone_number]
    u.email = params[:email]
    if params[:password] == params[:retype_password]
      u.password = params[:password]
      if u.save
        flash[:alert] = "성공적으로 수정되었습니다."
        redirect_to "/user/my_info"
      else
        flash[:alert] = u.errors.values.flatten.join(' ')
        redirect_to :back
      end
    else
      flash[:alert] = "패스워드가 맞지 않습니다."
      redirect_to :back
    end
  end
end
