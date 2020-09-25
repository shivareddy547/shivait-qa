
module ApplicationHelper
require 'spree/database_type_utilities'
require 'spree/frontend_helper'
require 'spree/addresses_helper'
  def maximum_quantity
    Spree::DatabaseTypeUtilities.maximum_value_for(:integer)
  end

def get_request_status(product)
  p 111111111111111111111
  p product
  return spree_current_user.requests.present? && spree_current_user.requests.present? ? spree_current_user.requests.where(:product_id=>product.id) : ""
end

ADDRESS_FIELDS = %w(firstname lastname company address1 address2 city country state zipcode  phone)

def user_available_addresses
  return unless try_spree_current_user

  try_spree_current_user.addresses.where(country: available_countries)
end
end
