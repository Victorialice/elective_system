class StoreController < ApplicationController
  def index
    @courses = Course.all
    #@user = User.find(params[:id])
  end


  def show 
    @course = Course.find(params[:id])
  end
  
end
