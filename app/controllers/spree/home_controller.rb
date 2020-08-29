module Spree
  class HomeController < Spree::StoreController
    respond_to :html
    include Spree::FrontendHelper
    def index

      # fresh_when etag: store_etag, last_modified: store_last_modified, public: true

      params[:id] = "categories" if params[:id].nil?
      @taxon = Spree::Taxon.friendly.find(params[:id])

      return unless @taxon

      @searcher = build_searcher(params.merge(taxon: @taxon.id, include_images: true))
      @products = @searcher.retrieve_products
      @taxonomies = Spree::Taxonomy.includes(root: :children)

      # moving the order state back to "cart" from "payment".
      # if current_order.present? && current_order.state == "payment"
      #   end_point = "/api/v1/checkouts/#{current_order.number}?state=cart"
      #   api_url = ENV['APP_HOST'] + end_point
      #   header = get_spree_api_header
      #
      #   response = HTTParty.put(api_url, :headers=> header)
      #   logger.debug "====putting order in cart state===="
      #   logger.info response
      # end

    end

    def about

      redirect_to root_path
    end

    def contact

    end

  end
end