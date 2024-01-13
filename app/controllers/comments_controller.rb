class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render :index
  end


  def create
    @comment = Comment.new(
      post_id: params[:post_id],
      content: params[:content]
    )
    @comment.save
    render :show
  end

  def show
    @comment = Comment.find_by(id:params[:id])
    render :show
  end


  def update
    @comment = Comment.find_by(id:params[:id])
    @comment.update(
      post_id: @comment.post_id,
      content: params[:content] || @comment.content
    )
    render :show
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    render json: { message: "the comment destroyed successfully" }
  end

end
