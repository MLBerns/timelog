class IndexController < ApplicationController
  def index

  end

  def login
    @current_user = User.authenticate(params[:user][:username], params[:user][:password])
    if @current_user
      session[:user_id] = @current_user.id
      redirect_to ("/users/#{@current_user.id}")
    else
      redirect_to ("/")
    end
  end

  def logout
    session.delete(:user_id)
    redirect_to("/")
  end
end
