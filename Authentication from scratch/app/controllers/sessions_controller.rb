class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_username(params[:username])

    if @user && @user.authenticate(params[:password])
      set_session
      redirect_to root_path, notice: 'User logged in successfully'
    else
      @notice = 'Username or password is incorrect'
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path, notice: 'Logged out successfully'
  end

  private

  def set_session
    session[:user_id] = @user.id
  end
end
