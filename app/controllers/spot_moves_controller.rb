class SpotMovesController < ApplicationController
  before_action :set_spot, only: %i[new create]

  def new
    @spot_moves = SpotMove.where(spot_id: params[:spot_id])
    @spot_move = SpotMove.new
    @markers = @spot_moves.map do |spot_move|
      {
        lat: spot_move.latitude,
        lng: spot_move.longitude
      }
    end
  end

  def create
    @spot_move = SpotMove.new
    @spot_move.latitude = params[:spot_move][:latitude]
    @spot_move.longitude = params[:spot_move][:longitude]
    @spot_move.move_id = params[:spot_move][:move_id]
    @spot_move.spot = @spot
    @spot_move.save
    redirect_to new_spot_spot_move_path(@spot)
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def spot_move_params
    params.require(:spot_move).permit(:spot_id, :move_id)
  end
end
