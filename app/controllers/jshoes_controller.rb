class JshoesController < ApplicationController

before_action :login_check
skip_before_action :login_check, :only => [:main, :shoes_category, :show, :review]

  def main
    @posts = Post.all
  end

  def shoes_category
    case params[:category]
    when "woman"
     @category = "여성슈즈"
    when "man"
     @category = "남성슈즈"
    else
     @category = "아동슈즈"
    end
    @posts = Post.where(category: @category)
  end
  
  def show
    @post = Post.find(params[:id])
    #if session[:user_id] != 1
    #  u = User.find(session[:user_id])
    #  u.post_id = params[:id]
    # end
  end
  
  def write
  end

  def write_complete
    post = Post.new
    post.user_id = session[:user_id]
    post.category = params[:post_category]
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.point = params[:post_point]
    post.price = params[:post_price]
    post.color = params[:post_color]
    post.size = params[:post_size]
    post.image = params[:image]
    if post.save
      flash[:alert] = "등록되었습니다."
      redirect_to "/jshoes/show/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def edit_review
    @post = Review.find(params[:id])
    if @post.user_id != session[:user_id]
      flash[:alert] = "수정 권한이 없습니다."
      redirect_to :back
    end
  end

  def edit_complete
    post = Post.find(params[:id])
    post.category = params[:post_category]
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.price = params[:post_price]
    post.color = params[:post_color]
    post.size = params[:post_size]
    post.point = params[:post_point]

    if post.save
      flash[:alert] = "수정되었습니다."
      redirect_to "/jshoes/show/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def edit_review_complete
    post = Review.find(params[:id])
    post.title = params[:review_title]
    post.content = params[:review_content]
    if post.save
      flash[:alert] = "수정되었습니다."
      redirect_to "/jshoes/review_show/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def delete_complete
    post = Post.find(params[:id])
    post.destroy
    flash[:alert] = "삭제되었습니다."
    redirect_to "/"
  end

  def delete_review_complete
    post = Review.find(params[:id])
    if post.user_id == session[:user_id]
      post.destroy
      flash[:alert] = "삭제되었습니다."
      redirect_to "/jshoes/review"
    else
      flash[:alert] = "삭제 권한이 없습니다."
      redirect_to :back
    end
  end

  def review
    @posts = Review.all
  end

  def review_show
    @post = Review.find(params[:id])
    @comment_writer = User.where(id: session[:user_id])[0]
  end

  def review_comment_complete
    comment = Comment.new
    comment.user_id = session[:user_id]
    comment.review_id = params[:review_id]
    comment.content = params[:comment_content]
    comment.save

    flash[:alert] = "새 댓글을 달았습니다."
    redirect_to "/jshoes/review_show/#{comment.review_id}"
  end
  
  def delete_comment_complete
    comment = Comment.find(params[:id])
    if comment.user_id == session[:user_id]
      comment.destroy
      flash[:alert] = "댓글이 삭제되었습니다."
      redirect_to "/jshoes/review_show/#{comment.review_id}"
    else
      flash[:alert] = "해당 댓글의 삭제 권한이 없습니다."
      redirect_to :back
    end
  end
end
