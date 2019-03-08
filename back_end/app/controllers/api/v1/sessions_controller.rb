module Api
  module V1
  class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        payload = { data: user.id}
        token = JWT.encode payload, nil, 'none'

        # cookies.signed[:jwt] = {
        #   value:  token, 
        #   httponly: true,
        #   expires: 1.hour.from_now
      # }
        render json: {
          data: user,
          jwt: token
        }
      else
        render json: {
          error: 'Username or password incorrect'
        }, status: 404
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