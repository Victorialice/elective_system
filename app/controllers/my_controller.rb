class MyController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    @my_courses = @user.courses
  end
end
