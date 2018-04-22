class RevealController < ApplicationController

  def update
    @pairing = Pairing.find(params[:id])
    user_reveal = params[:reveal]
    #@pairing.update(user1reveal: user_reveal)

    if @pairing.user1 == current_user.id
      @pairing.update(user1reveal: user_reveal)
    end
    if @pairing.user2 == current_user.id
      @pairing.update(user2reveal: user_reveal)
    end
    redirect_to root_path
  end

  private

  def pairing_params
    params.permit(:reveal)
  end
end
