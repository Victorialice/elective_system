class UserController < ApplicationController
  
  def index
    @users = User.all
    @users = User.page(params[:page]).per(5)

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

  if  @user.save
    redirect_to "/user/#{@user.id}"
  else
    render :new
  end
  end

  def show
    @user= User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :number, :password, :avatar)
  end

end
