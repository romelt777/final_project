module Api
  module V1
    class ComparisonsController < ApplicationController
      def create
        puts "909"
        puts params
        comparison = comparison_params
        # @comparison = Comparison.new({
        #   user_id: "1",
        # })
        # @comparison.comparison_cars.new(
        #   car_id: comparison_params.newCars[0]
        # )
        # if @comparison.save
        #   render json: {
        #     status: 'SUCCESS',
        #     message: 'Saved comparison to database',
        #   },status: :created
        # else
        #   render json: {
        #     status: 'FAILED',
        #     message: 'Failed to save comparison car to database',
        #   },status: :bad_request
        # end
      end


      private

      def comparison_params
        params.permit(:make, :model, :year, :condition, newCars: [])
      end

    end
  end
end
