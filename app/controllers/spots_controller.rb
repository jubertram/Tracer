class SpotsController < ApplicationController
  def index
    @spots = Spot.all
    # The `geocoded` scope filters only spots with coordinates
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
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

  end

private

  def spot_params
    params.require(:spot).permit(:address, :spot_difficulty, :latitude, :longitude, :user_id, :photo_url )
  end
end
