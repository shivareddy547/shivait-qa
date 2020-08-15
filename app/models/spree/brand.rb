module Spree
  class Brand < Spree::Base
    acts_as_list

    default_scope { order(:position) }


  end
end
