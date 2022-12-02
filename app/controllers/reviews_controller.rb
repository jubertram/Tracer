class ReviewsController < ApplicationController
  def create
    @user = current_user
    @spot = Spot.find(params[:spot_id])
    @review = Review.new(review_params)
    @review.spot = @spot
    @review.user = @user

    redirect_to spot_path(@spot)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
