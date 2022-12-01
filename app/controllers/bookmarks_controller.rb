class BookmarksController < ApplicationController

  def destroy
    spot = Spot.find(params[:spot_id])
    @bookmarks = Bookmark.delete
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
