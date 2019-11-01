class CommentsController < ApplicationController

  def create
    if post.present?
      @comment = post.comments.new(comment_params.merge(post_id: post.id))
      @comment_right = @comment.save
    @comment = nil unless @comment_right
    end
  end

  def destroy
    post
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path
  end

  private

  def post
    @post = Post.find_by_id(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:author, :content, :avatar)
  end

end
