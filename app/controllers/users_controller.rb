
=begin
name: tsuchiya
date: 2020/6/1
purpose: user controller
=end

=begin
name: tsuchiya
date: 2020/6/1
Function: UsersController 
Args: user
Return: なし
=end


class UsersController < ApplicationController
    
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the tasksupporter!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
