class Admin::UsersController < ApplicationController
  def index
    
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    @user.save
    UserMailer.send_email(@user).delivery
    redirect_to admin_users_path
  end
  def edit
     @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to admin_users_path
  end
  
  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:role,:email,:password,:password_confirmation)
  end
end
