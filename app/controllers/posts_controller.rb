class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
    redirect_to @post
  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :author)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
