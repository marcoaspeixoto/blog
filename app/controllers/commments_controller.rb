class CommmentsController < ApplicationController
  def create
    commment = Commment.create!(comments_params)

    redirect_to commment.post, notice: 'O seu comentário foi enviado.'
  end

  private
  def commments_params
    params.require(:commment).permit(:post_id, :author, :body)
  end
end

#Voltar a usar commments com 3 m's