class JshoesController < ApplicationController
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
    if post.save
      flash[:alert] = "저장되었습니다."
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
end
