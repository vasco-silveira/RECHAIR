class CoursesController < ApplicationController
  # before_action :set_user, except: [:index, :show]

  def index
    # Add the folli=owing lines of code when we implement a search bar
    if params[:query].present?
      courses_by_query = Course.search_by_title_and_description(params[:query])
      @courses = courses_by_query
      if params[:institution].present? && params[:institution][:id].present?
        @courses =  courses_by_query.where(institution: params[:institution][:id])
      end
    elsif params[:institution].present? && params[:institution][:id].present?
      @courses =  Course.all.where(institution: params[:institution][:id])
    else
      @courses = Course.all
    end
    @user = current_user

    # @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @booking = Booking.new
    @institution = @course.institution
  end

  private

  def course_params
    params.require(:game).permit(:professor, :title, :description, :subject, :price, :start_date, :end_date, :rating)
  end

  # def set_user
  #   @user = current_user
  # end
end
