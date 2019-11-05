class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      flash[:success] = "Log in successful, you are welcome!"
      #log_in user
      redirect_to user
    else
      flash.now[:danger] = "Invalid email/password combination!"
      render 'new'
    end
   end

  def destroy
  end
end
