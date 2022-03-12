class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home]
  def home
    # random coment
    @courses = Course.order("rating DESC")
  end
  def admin
  end
  
  def profile
    @user = current_user
    @bookings = current_user.bookings
  end

  def edit
    @user = current_user
  end

end
