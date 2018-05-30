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
  
  def edit
    @edit_post = Post.find(params[:id])
  end
  
  def update
    update_post = Post.find(params[:id])
    update_post.title = params[:title]
    update_post.body = params[:body]
    update_post.save
    
    redirect_to '/posts/index'
  end
  
  def delete
    delete_post = Post.find(params[:id])
    delete_post.destroy
    
    redirect_to '/posts/index'
  end
end
