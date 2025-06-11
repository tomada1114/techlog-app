class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    # 実装は次のレッスンで行います
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
