class Post < ApplicationRecord
  belongs_to :user

  # before_action :find_post, only: [:show, :edit, :update, :destroy]

  #def index
  #  @posts = Post.all.to_a
  #end

  def create
    @post = Post.create(robot_params)
    redirect_to @post
  end

  def new
    @post = Post.new
  end

  def show
    post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
  end

  def destroy
    @post = Post.find(params[:id])
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
