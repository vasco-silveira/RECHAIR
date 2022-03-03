class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :destroy ]
  before_action :set_user
  # Need to make sure this displays bookings for the current user only
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.course = @course
    @booking.save
    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:course_id, :user_id)
  end

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end
end
