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
    @comment = @post.comments.find(params[:id])

    unless @comment.user == current_user
      flash[:alert] = '他のユーザーのコメントは編集できません'
      redirect_to post_path(@post)
    end
  end

  def update
    @comment = @post.comments.find(params[:id])

    if @comment.user == current_user
      if @comment.update(comment_params)
        flash[:notice] = 'コメントを更新しました'
        redirect_to post_path(@post)
      else
        flash.now[:alert] = 'コメントの更新に失敗しました'
        render :edit
      end
    else
      flash[:alert] = '他のユーザーのコメントは編集できません'
      redirect_to post_path(@post)
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])

    if @comment.user == current_user
      @comment.destroy
      flash[:notice] = 'コメントを削除しました'
    else
      flash[:alert] = '他のユーザーのコメントは削除できません'
    end

    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
