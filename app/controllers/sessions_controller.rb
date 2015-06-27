class SessionsController < ApplicationController
  before_action :authenticate, only: [:destroy]
  def new 
  end

  def create
    @user = User.find_by_email(params[:email])
    #find user by email address
    #if user exits and user is authanticating log them in
    #if not render a new view with the flash message
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Signed in successfully!#{@user.full_name}"
      redirect_to users_path
    else
      flash.now[:alert] = "Invalid Email or password!"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "successfully loged out!"
  end
end