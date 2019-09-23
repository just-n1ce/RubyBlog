class PostsController < ApplicationController
  def index
    @posts = Post.all
    @categories = Category.all
  end

  def new
    @post = Post.new
    @all_category = Category.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      raise ArgumentError
    end
  end
  def edit
    @all_category = Category.all
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:name, :content, :category_id, :file)
  end
end
