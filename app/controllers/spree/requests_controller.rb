module Spree
  class RequestsController < Spree::StoreController
    respond_to :html
    include Spree::FrontendHelper
    def requestenroll
      Spree::Request.new(:status=>"pending", :product_id=>params[:product_id], :user_id=> spree_current_user.id).save!
      flash[:alert]="Enrollment request sent!"
      redirect_to root_path

    end

  end

  end