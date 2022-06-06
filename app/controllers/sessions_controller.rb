=begin
name: tsuchiya
date: 2020/6/1
purpose: logon_controller
=end

=begin
name: tsuchiya
date: 2020/6/1
Function: SessionsController
Args: user.email user.password
Return: user
=end


class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
