class SpotsController < ApplicationController
  def index
    if params[:query]
      @spots = Spot.near(params[:query], params[:distance].to_i)
    else
      @spots = Spot.all
    end
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

  end

  def create

  end

  def destroy

  end
end
