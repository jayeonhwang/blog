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

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(
      title:params[:title] || @post.title,
      image:params[:image] || @post.image,
      body:params[:body] || @post.body,
    )
    render :show
  end

end
