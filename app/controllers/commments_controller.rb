class CommentsController < ApplicationController
  def create
    binding.pry
    #comment = Comment.create!(coments_params)
  end

  private
  def comments_params
    params.require(:comment).permit(:post_id, :author, :body)
  end
end