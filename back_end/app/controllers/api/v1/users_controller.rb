module Api
  module V1
    class UsersController < ApplicationController
      def create
        @user = User.new(user_params)
        if @user.save

          session[:user_id] = @user.id
          render json: {
            status: 'SUCCESS',
            message: 'Saved user to database',
            data: @user
          },status: :created
        else
          pp @user.errors
          render json: {
            status: 'FAILED',
            message: 'Failed to save user to database',
          },status: :bad_request
        end
      end

      def show
        params.permit(:id)
        puts "showtime "
        puts params
        @user = User.find(params[:id])
        @comparison = Comparison.where(user_id: params[:id])
        puts @user.inspect
        puts @comparison.inspect
      end

      private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :id)
        # {user: {first_name: "asdf", last_name: "asdf", email: "asdf", password: "asdf"}}
      end
    end
  end
end
