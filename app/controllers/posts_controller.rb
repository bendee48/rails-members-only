class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(body: params[:post][:body])
    
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end
end
