class MyController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    @appointments = @user.appointments
    @my_courses = @user.courses

  end
end
