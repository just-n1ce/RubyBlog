class CommentsController < ApplicationController

  def create
    @post = Post.find_by_id(params[:id])
    if @post.present?
      @comment = @post.comments.new(comment_params.merge(post_id: @post.id))
      # redirect_to @post
      @comment_right = @comment.save
      unless @comment_right
        @comment = nil
      end
    end

  end

  # @post = Post.find_by_id(params[:id])
  # @comment = @post.comments.create(comment_params)
  # redirect_to show_post_path(@post.id)
  #

  def destroy
    @post = Post.find_by_id(params[:id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path
  end
  private
  def comment_params
    params.require(:comment).permit(:author, :content)
  end

end
