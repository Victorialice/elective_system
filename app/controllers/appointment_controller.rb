class AppointmentController < ApplicationController

  def index
    @appointments= Appointment.all
  end

  def new
  end

  def create
    course = Course.find(params[:course_id])
     
    @course = Course.find(params[:course_id])
    
    @user = User.find_by(id: session[:user_id])

    if @user.appointments.create(:course => course) && @course.quantity <= Course::MAXIMUM
      @course.quantity += 1
      @course.save
      render :create 
    else 
      redirect_to :store 
    end 

  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def destroy
    @appointment = Appointment.find(params[:appointment_id])
    if @appointment.destroy
      @course = @appointment.course
      @course.quantity -= 1
      @course.save

      redirect_to "/my"
    end

  end

  private
  def appointment_params
    params.require(:appointment).permit(:course_id, :user_id)
  end

end

