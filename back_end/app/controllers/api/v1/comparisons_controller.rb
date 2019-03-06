module Api
  module V1
    class ComparisonsController < ApplicationController
      def create
        puts params
      end




      private

      def comparisons_params
        params[:_json][0].permit(:make, :model, :year, :condition)
      end

    end
  end
end
