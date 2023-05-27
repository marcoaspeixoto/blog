class CommmentsController < ApplicationController
  def create
    binding.pry
    #comment = Comment.create!(comments_params)
  end

  private
  def commments_params
    params.require(:commment).permit(:post_id, :author, :body)
  end
end


#Consertar nome do arquivo commments_controller (está com 3 m's)