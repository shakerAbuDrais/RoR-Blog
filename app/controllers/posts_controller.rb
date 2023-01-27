# This is a post controller class with its own methods
class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.where(authorid: @user.id)
  end

  def show
    @post = Post.find(params[:id])
    @author = User.find(params[:user_id])
    @comments = Comment.where(post_id: params[:id])
  end
end
