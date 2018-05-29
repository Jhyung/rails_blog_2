class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
  end

  def create
    post = Post.new(title: params[:title], body: params[:body])
    post.save
    
    redirect_to "/posts/index"
  end

  def show
    @post = Post.find(params[:id])
  end
end
