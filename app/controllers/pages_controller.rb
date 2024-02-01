class PagesController < ApplicationController
  before_action :authenticate_user!, only: [ :profile ]

  def home
    @user =current_user
  end

  def profile
    @user = current_user
    @bookmarks = @user.bookmarks
  end
end
