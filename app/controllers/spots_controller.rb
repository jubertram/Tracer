class SpotsController < ApplicationController
  # before_action :set_spot, only: :destroy
  before_action :set_spot, only: [:show, :destroy]
  def index
    @spots = Spot.all
    @user = current_user
    # The `geocoded` scope filters only spots with coordinates
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        image_url: helpers.asset_url("pin"),
        info_window: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    if @spot.save
      redirect_to @spot, notice: "The spot was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @spot.destroy
    redirect_to spot_path(@spot), status: :see_other
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:spot_difficulty, :address, :photo_url)
  end
end
