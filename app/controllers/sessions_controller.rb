# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = User.authenticate_with_credentials(params[:email], params[:password])
      user_session = User.find_by_email(params[:email])
      session[:user_id] = user_session.id
      redirect_to root_url, notice: 'Logged in!'
    else
      # If user's login doesn't work, send them back to the login form.
      flash.now[:alert] = 'Email or password is invalid'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
