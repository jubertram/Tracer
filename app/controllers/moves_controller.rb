class MovesController < ApplicationController
  def show
    @move = Move.find(params[:id])
  end

  private

  def move_params
    params.require(:move).permit(:name, :level, :description, :video)
  end
end
