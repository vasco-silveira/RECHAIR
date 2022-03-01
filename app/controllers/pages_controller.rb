class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home]
  def home
    # random coment
  end

  def profile
    @user = current_user
    @bookings = current_user.bookings
  end

  def edit
    @user = current_user
  end

end
