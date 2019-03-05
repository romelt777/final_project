module Api
  module V1
    class PricesController < ApplicationController
      def index
        @prices = Price.order('created_at DESC')
        render json: {
          status: 'SUCCESS',
          message: 'Loaded Prices',
          data: @prices
        },status: :ok
      end
    end
  end
end