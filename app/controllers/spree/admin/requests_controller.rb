module Spree
  module Admin
    class RequestsController < ResourceController
      def index
        @requests = Spree::Request.page(params[:page] || 1).per(50)
      end
    end
  end
end
