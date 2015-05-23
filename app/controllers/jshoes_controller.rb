class JshoesController < ApplicationController

http_basic_authenticate_with name: "admin", password: "secret", except: [:main, :shoes_category, :show ]

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
  end
  
  def write
  end

  def write_complete
    post = Post.new
    post.category = params[:post_category]
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.price = params[:post_price]
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

  def edit_complete
    post = Post.find(params[:id])
    post.category = params[:post_category]
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.price = params[:post_price]
    if post.save
      flash[:alert] = "수정되었습니다."
      redirect_to "/jshoes/show/#{post.id}"
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

  def notice
  end

  def review
    @posts = Review.all
  end

  def review_show
    @post = Review.find(params[:id])
  end

  def qna
  end
  
  def review_comment_complete
    comment = Comment.new
    comment.review_id = params[:review_id]
    comment.content = params[:comment_content]
    comment.save

    flash[:alert] = "새 댓글을 달았습니다."
    redirect_to "/jshoes/review_show/#{comment.review_id}"
  end
  
  def delete_comment_complete
    comment = Comment.find(params[:id])
    comment.destroy
    flash[:alert] = "댓글이 삭제되었습니다."
    redirect_to "/jshoes/review_show/#{comment.review_id}"
  end
end
