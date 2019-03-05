module Api
  module V1
    class UsersController < ApplicationController
      def create 
        @user = Users.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          render json: {
            status: 'SUCCESS',
            message: 'Saved user to database'
          },status: :created
        else 
          pp @user.errors
          render 'new'
          render json: {
            status: 'FAILED',
            message: 'Failed to user car to database',
          },status: :bad_request
        end
      end

      private
      
      def user_params
        params.require(:user).permit(:name, :email, :password)  
      end
    end
  end
end
