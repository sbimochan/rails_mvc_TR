class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @show = Post.find(params[:id])
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    # binding.pry
    if @post.valid?
    redirect_to root_path
    else
      render :new
    end
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
  def edit
    @edit = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.valid?
      redirect_to root_path
    else
      render :edit
    end
  end
  private
  def post_params
    params.require(:post).permit(:title, :author, :content)
  end
end
