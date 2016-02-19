class AppointmentController < ApplicationController

  def index
    @appointments= Appointment.all
  end

  def new
  end

  def create
    course = Course.find(params[:course_id])
     
    @courses = Course.find(params[:course_id])
    #Course_total = 5

    @user = User.find_by(id: session[:user_id])

    @user.appointments.create(:course => course)
    
    respond_to do |format|
    if @user.appointments.create(:course => course)
    format.html { render :create }
    
    else
      render :store
    end 
    end

  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private
  def appointment_params
    params.require(:appointment).permit(:course_id, :user_id)
  end

end

