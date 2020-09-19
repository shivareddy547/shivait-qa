
module ApplicationHelper
require 'spree/database_type_utilities'
require 'spree/frontend_helper'
  def maximum_quantity
    Spree::DatabaseTypeUtilities.maximum_value_for(:integer)
  end

def get_request_status(product)
  p 111111111111111111111
  p product
  return spree_current_user.requests.present? && spree_current_user.requests.present? ? spree_current_user.requests.where(:product_id=>product.id) : ""
end
end
