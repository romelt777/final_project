module Api
  module V1
    class FuelsController < ApplicationController
      def index
        @fuels = Fuel.order('created_at DESC')
        render json: {
          status: 'SUCCESS',
          message: 'Loaded fuels',
          data: @fuels
        },status: :ok
      end
    end
  end
end