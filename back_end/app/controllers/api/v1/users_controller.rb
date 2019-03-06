module Api
  module V1
    class UsersController < ApplicationController
      def create 
        @user = User.new(user_params)
        if @user.save
         
          session[:user_id] = @user.id
          render json: {
            status: 'SUCCESS',
            message: 'Saved user to database'
          },status: :created
        else 
          pp @user.errors
          render json: {
            status: 'FAILED',
            message: 'Failed to save user to database',
          },status: :bad_request
        end
      end

      private
      
      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password_digest)  
      end
    end
  end
end
