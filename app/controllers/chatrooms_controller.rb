class ChatroomsController < ApplicationController
  before_action :set_user
  
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new
    @course = Course.find(params[:course_id])
    @chatroom.user = current_user
    @chatroom.course = @course
    @chatroom.save
    if @chatroom.save!
      redirect_to chatrooms_path
    else
      render :new
    end
  end

  private

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end
end
