class RevealController < ApplicationController

  def update
    @pairing = Pairing.find(params[:id])
    @pairing.update(pairing_params)
  end

  private

  def pairing_params
    params.require(:pairing).permit(:id, :reveal)
  end
end
