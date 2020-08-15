module Spree
  module Admin
    class BrandsController < ResourceController
      def index
        @brands = Spree::Brand.page(params[:page] || 1).per(50)
      end
    end
  end


end
