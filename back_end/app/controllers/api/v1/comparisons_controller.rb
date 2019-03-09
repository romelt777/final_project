module Api
  module V1
    class ComparisonsController < ApplicationController
      def create
        puts "909"
        puts params
        comparison = create_comparison(comparison_params)
        # @comparison = Comparison.new({
        #   user_id: "1",
        # })
        # @comparison.comparison_cars.new(
        #   car_id: comparison_params.newCars[0]
        # )
        # if @comparison.save
          render json: {
            status: 'SUCCESS',
            message: 'Saved comparison to database',
            data: comparison
          },status: :created
        # else
        #   render json: {
        #     status: 'FAILED',
        #     message: 'Failed to save comparison car to database',
        #   },status: :bad_request
        # end
      end

      def show
        puts params[:id]
        @comparison = Comparison.find(params[:id])
        @comparison_cars = @comparison.comparison_cars
        puts @comparison.inspect
        puts @comparison_cars.inspect
        render json: {
          status: 'SUCCESS',
          message: 'Loaded Comparison',
          data1: @comparison,
          data2: @comparison_cars
        },status: :ok
      end


      private

      def comparison_params
        params.permit(:make, :model, :year, :currentUserId, :condition, newCars: [])
      end

      def create_comparison(data)
        puts "hello"
        puts data
        puts data[:make]
        comparison = Comparison.new({
          user_id: data[:currentUserId],
        })

        data[:newCars].each do |car|
          comparison.comparison_cars.new(
            car_id: car
          )
        end

        # comparison[comparison_cars_id] = comparison.comparison_cars.id
        comparison.save!
        comparison
      end

    end
  end
end
