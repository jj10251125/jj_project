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
  end
  
  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
