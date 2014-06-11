require 'json'

class UsersController < ApplicationController
  def create
    params.permit!
    @user = User.create(params[:user])
    session[:user_id] = @user.id
    redirect_to "/users/#{@user.id}"
  end

  def show
    redirect_to ("/") unless session[:user_id] == params[:id].to_i
  end

  def punch_in
    user = User.find_by id: session[:user_id]
    user.is_punched_in = true
    user.punch_in_time = Time.now
    user.save
    render json: user.is_punched_in
  end

  def punch_out
    user = User.find_by id: session[:user_id]
    user.is_punched_in = false
    workday = Workday.create(time_in: user.punch_in_time, time_out: Time.now, location: "26th Street")
    user.punch_in_time = nil
    user.workdays << workday
    user.save
    render json: user.is_punched_in
  end
end
