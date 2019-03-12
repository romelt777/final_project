module Api
  module V1
    class RepairsController < ApplicationController
      def index
        @repairs = Repair.order('created_at DESC')
        render json: {
          status: 'SUCCESS',
          message: 'Loaded repairs',
          data: @repairs
        },status: :ok
      end
    end
  end
end