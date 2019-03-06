module Api
  module V1
    class ComparisonsController < ApplicationController
      def create
        puts params[:_json]
        # @comparison = Comparison.new(comparison_params)
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
        params[:_json][0].permit(:make, :model, :year, :condition, :newCars)
      end

    end
  end
end
