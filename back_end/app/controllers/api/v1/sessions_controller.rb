module Api
  module V1
  class SessionsController < ApplicationController
    def new

    end

    def create
      @user = User.find_by_email(params[:email])
      # If the user exists AND the password entered is correct.
      if @user && @user.authenticate(params[:password])
        # Save the user id inside the browser cookie. This is how we keep the user 
        # logged in when they navigate around our website.
        session[:user_id] = @user.id
        render json: {
          status: 'SUCCESS',
          message: 'Login Success',
          data: @user
        },status: :ok
      
      else
        render json: {
          status: 'UNAUTHORIZED',
          message: 'Login Unsuccessful',
          data: @user
        },status: :unauthorized
      end
    end

    def destroy
      session[:user_id] = nil
      render json: {
        status: 'SUCCESS', 
      },status: 200
      end
    end
  end
end