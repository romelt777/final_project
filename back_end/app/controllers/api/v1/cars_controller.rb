module Api
  module V1
    class CarsController < ApplicationController
      def index
        @cars = Car.order('created_at DESC')
        render json: {
          status: 'SUCCESS',
          message: 'Loaded Cars',
          data: @cars
        },status: :ok
      end

      def show
        puts params[:id]
        @car = Car.find(params[:id])
        render json: {
          status: 'SUCCESS',
          message: 'Loaded Car',
          data: @car
        },status: :ok
      end
    end
  end

end