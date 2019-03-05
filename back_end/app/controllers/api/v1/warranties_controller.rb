module Api
  module V1
    class WarrantiesController < ApplicationController
      def index
        @warranties = Warranty.order('created_at DESC')
        render json: {
          status: 'SUCCESS',
          message: 'Loaded Warranties',
          data: @warranties
        },status: :ok
      end
    end
  end
end