class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = 'コメントを投稿しました'
      redirect_to post_path(@post)
    else
      flash[:alert] = 'コメントの投稿に失敗しました'
      redirect_to post_path(@post)
    end
  end

  def edit
    # 実装は後のレッスンで行います
  end

  def update
    # 実装は後のレッスンで行います
  end

  def destroy
    # 実装は後のレッスンで行います
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
