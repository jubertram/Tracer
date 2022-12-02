class ReviewsController < ApplicationController
  def create
    @spot = Spot.find(params[:spot_id])
    @review = Review.new(review_params)
    @review.spot = @spot
    @review.user = current_user
    if @review.save
      redirect_to spot_path(@spot), notice: "La review a été ajouté"
    else
      redirect_to spot_path(@spot), notice: "Sélectionne une étoile!"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
