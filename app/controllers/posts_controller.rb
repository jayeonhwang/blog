class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def create
    @post = Post.new(
      title: params[:title],
      image: params[:image],
      body: params[:body]
    )
    @post.save
    render :show
  end

  def show
    @post = Post.find_by(id: params[:id])
    render :show
  end
  
end
