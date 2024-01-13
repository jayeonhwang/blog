class CommentsController < ApplicationController

  def create
    @comment = Comment.new(
      post_id: params[:post_id],
      content: params[:content]
    )
    @comment.save
    render :show
  end

  def update
    @comment = Comment.find_by([:id])
    @comment.update(
      @comment.post_id,
      content: params[:content] || @comment.content
    )
    render :show
  end

  def destroy
    @comment = comment.find_by(id: params[:id])
    @comment.destroy
    render json: { message: "the comment destroyed successfully" }
  end

end
