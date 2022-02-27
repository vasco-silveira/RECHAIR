class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home]
  def home
    # random coment
  end

  def profile
    @user = current_user
    @booking = Booking.where(user: current_user)
  end

  def edit
    @user = current_user
  end

end
