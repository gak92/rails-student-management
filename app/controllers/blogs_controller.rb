class BlogsController < ApplicationController

  def index
    # @blogs = Blog.all
    @blogs = Blog.includes(:student)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path, notice: 'Blog has been created successfully'
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)    
  end

end