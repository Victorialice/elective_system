class ContainerController < ApplicationController

  def index
  end

  def create
    course = Course.find(params[:course_id])
     @container = Container.new({"course" => {"name"=>"name","number"=>"number"}})


     @container.save
      redirect_to "/courses/#{@course.id}"
  end


end
