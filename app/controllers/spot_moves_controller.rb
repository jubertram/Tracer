class SpotMovesController < ApplicationController
  before_action :set_spot, only: %i[new create]

  def new
    @spot_move = SpotMove.new
  end

  def create
    params[:spot_move][:move_id].each do |id|
      next if id == ""

      @spot_move = SpotMove.new(spot_id: @spot, move_id: id.to_i)
      @spot_move.spot = @spot
      @spot_move.save
    end
    redirect_to spot_path(@spot)
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def spot_move_params
    params.require(:spot_move).permit(:spot_id, :move_id)
  end
end
