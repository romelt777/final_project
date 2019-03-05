module Api
  module V1
    class DepreciationsController < ApplicationController
      def index
        @depreciations = Depreciation.order('created_at DESC')
        render json: {
          status: 'SUCCESS',
          message: 'Loaded depreciations',
          data: @depreciations
        },status: :ok
      end
    end
  end
end