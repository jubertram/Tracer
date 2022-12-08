class BookmarksController < ApplicationController

  def destroy
    spot = Spot.find(params[:spot_id])
    @bookmark = Bookmark.where(user_id: current_user.id, spot_id: spot.id)
    @bookmark.destroy_all
    if params[:from] == "profile"
      redirect_to profile_path, status: :see_other
    else
      redirect_to spot_path(spot.id)
    end
  end

  def create
    spot = Spot.find(params[:spot_id])
    @bookmarks = Bookmark.new(user_id: current_user.id, spot_id: spot.id)
    if @bookmarks.save
      redirect_to spot_path(spot)
    else
      redirect_to spot_path(spot), alert: 'Something went wrong.'
    end
  end
end
