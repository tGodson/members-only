class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:session][:username])

    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = 'logged in successfully'
      redirect_to root_path
    else
      flash.now[:alert] = 'oops some errors occured while loggin in'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'you are now logged out'
    redirect_to root_path
  end
end
