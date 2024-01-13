class CommentsController < ApplicationController

  def create
    @comment = Comment.new(
      post_id: params[:post_id],
      content: params[:content]
    )
    @comment.save
    render :show
  end

end
