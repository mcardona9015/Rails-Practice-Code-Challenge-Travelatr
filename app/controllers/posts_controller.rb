class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :like]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params(:title, :content, :blogger_id, :destination_id))
    if @post.valid?
      redirect_to post_path(@post)
    else
      flash[:messages] = @post.errors.full_messages
      redirect_to new_post_path(@post)
    end
  end

  def show
  end

  def edit
    
  end

  def update
    @post.update(post_params(:title, :content, :blogger_id, :destination_id))
    if @post.valid?
      redirect_to post_path(@post)
    else
      flash[:messages] = @post.errors.full_messages
      redirect_to edit_post_path(@post)
    end
  end

  def like
    post_like = @post.likes + 1
    @post.update(likes: post_like)
    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params(*args)
    params.require(:post).permit(*args)
  end
end
