class UsersController < ApplicationController

  # before_action :authenticate_user!, except: [:new]

  # def index
  #   @users = User.all
  # end

  # def show
  #   @user = User.find_by_id(params[:id])
  # end

  # def edit 
  #   @user = User.find_by_id(params[:id])
  # end

  # def update
  #   @user = User.find_by_id(params[:id])
  #   if @user.update_attributes(user_params)
  #     flash[:notice] = "User successfully Updated!"
  #     redirect_to users_path
  #   else
  #     flash[:alert] = "Someting is going wrong Try one more time!"
  #     render :edit
  #   end
  # end

  # def new
  #   @user  = User.new

  # end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     flash[:notice] = "user successfully added!"
  #     redirect_to students_path
  #   else
  #     flash[:alert] = "Something is wrong Try again!"
  #     render :new
  #   end
  # end

  # def destroy
  #   @user = User.find_by_id(params[:id])
  #   @user.destroy
  #   redirect_to users_path
  # end

  # def user_params
  #   params.require(:user).permit(:email, :full_name, :password, :password_confirmation)
  # end
end