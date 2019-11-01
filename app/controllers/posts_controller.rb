class PostsController < ApplicationController
  def index
    @posts = Post.all
    all_category
  end

  def new
    @post = Post.new
    all_category
  end

  def show
    post
    @comment = Comment.new
    all_category
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
    all_category
    post
  end

  def update
    if post.update(post_params)
      redirect_to post
    else
      render 'edit'
    end
  end

  def destroy
    post.destroy
    redirect_to posts_path
  end

  private

  def post
    @post = Post.find(params[:id])
  end

  def all_category
    @all_category = Category.all
    @categories = Category.all
  end

  def post_params
    params.require(:post).permit(:name, :content, :category_id, :file)
  end
end
