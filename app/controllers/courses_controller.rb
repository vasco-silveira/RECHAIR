class CoursesController < ApplicationController
  # before_action :set_user, except: [:index, :show]

  def index
    # Add the folli=owing lines of code when we implement a search bar
    if params[:query].present? || params[:institution].present?
      courses_by_query = Course.search_by_title_and_description(params[:query])
      if params[:institution][:id].empty?
        @courses = courses_by_query
      else
        @courses =  courses_by_query.where(institution: params[:institution][:id])
      end
      if @courses.empty?
        @courses = Course.all
      end

    else
      @courses = Course.all
    end
    @user = current_user

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
