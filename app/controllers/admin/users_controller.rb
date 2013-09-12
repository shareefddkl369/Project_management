class Admin::UsersController < ApplicationController
  before_filter :get_user,:only=>[:edit,:show,:update,:destroy]
  def index
    
  end
  def show
    
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    @user.save
    UserMailer.send_email(@user).deliver
    redirect_to admin_users_path
  end
  def edit
  end
  def update
    @user.update_attributes(user_params)
    redirect_to admin_users_path
  end
  
  def destroy
    @user.destroy
    redirect_to admin_users_path
  end
  private
  def get_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:first_name,:last_name,:role,:email,:password,:password_confirmation)
  end
end
