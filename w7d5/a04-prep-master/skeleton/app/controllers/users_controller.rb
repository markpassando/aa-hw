class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.new(user_params)

    if @user.save
      @current_user = @user
      session[:session_token] = @user.reset_session_token!

      redirect_to links_url
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
