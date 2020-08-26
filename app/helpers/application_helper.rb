
module ApplicationHelper
require 'spree/database_type_utilities'
require 'spree/frontend_helper'
  def maximum_quantity
    Spree::DatabaseTypeUtilities.maximum_value_for(:integer)
  end
end
