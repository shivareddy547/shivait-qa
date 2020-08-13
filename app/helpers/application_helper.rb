
module ApplicationHelper
require 'spree/database_type_utilities'
  def maximum_quantity
    Spree::DatabaseTypeUtilities.maximum_value_for(:integer)
  end
end
