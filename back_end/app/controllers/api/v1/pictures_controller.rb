module Api
  module V1
    class PicturesController < ApplicationController
      def index
        @pictures = Picture.order('created_at DESC')
        render json: {
          status: 'SUCCESS',
          message: 'Loaded Pictures',
          data: @pictures
        },status: :ok
      end
    end
  end
end