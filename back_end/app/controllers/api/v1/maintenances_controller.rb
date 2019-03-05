module Api
  module V1
    class MaintenancesController < ApplicationController
      def index
        @maintenances = Maintenance.order('created_at DESC')
        render json: {
          status: 'SUCCESS',
          message: 'Loaded maintenances',
          data: @maintenances
        },status: :ok
      end
    end
  end
end