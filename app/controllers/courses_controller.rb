class CoursesController < ApplicationController
  # before_action :set_user, except: [:index, :show]

  def index
    # Add the folli=owing lines of code when we implement a search bar
    if params[:query].present?
      @courses = Course.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @courses = Course.all
    end
    # @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @booking = Booking.new
  end

  private

  def course_params
    params.require(:game).permit(:professor, :title, :description, :subject, :price, :start_date, :end_date, :rating)
  end

  # def set_user
  #   @user = current_user
  # end
end
