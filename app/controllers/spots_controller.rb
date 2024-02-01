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
        info_window: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
    @review = Review.new
    @bookmark = Bookmark.where(user_id: current_user.id, spot_id: @spot.id) if current_user
    @reviews = @spot.reviews
    @average_rating = @reviews.average(:rating).to_i

    @markers = @spot.spot_moves.map do |spot_move|
      {
        lat: spot_move.latitude,
        lng: spot_move.longitude,
        info_window2: render_to_string(partial: "info_window2", locals: { spot_move: spot_move })
      }
    end
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    if @spot.save
      redirect_to new_spot_spot_move_path(@spot), notice: "Le spot a été créé avec succès!"
    else
      flash.now[:alert] = "Veuillez ajouter une photo!"
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
    params.require(:spot).permit(:spot_difficulty, :address, :photo_url, :name)
  end
end
