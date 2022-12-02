class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = current_user
    @bookmarks = @user.bookmarks
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to @user, notice: 'Your Profile Was Successfully Updated!'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :bio, :photo)
  end
end
