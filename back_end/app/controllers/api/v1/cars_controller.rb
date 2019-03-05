module Api
  module V1
    class CarsController < ApplicationController
      def index
        @cars = Car.order('created_at DESC')
        console.log(@cars)
        render json: {
          status: 'SUCCESS',
          message: 'Loaded Cars',
          data: @cars
        },status: :ok
      end

      def create
        puts "909"
        puts params[:_json][0]
        # puts
        @car = Car.new(car_params)
        if @car.save
          render json: {
            status: 'SUCCESS',
            message: 'Save current car to database',
          },status: :created
        else
          render json: {
            status: 'FAILED',
            message: 'Failed to save current car to database',
          },status: :bad_request
        end
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

      private

      def car_params
        params[:_json][0].permit(:make, :model, :year, :condition)
      end

    end
  end

end