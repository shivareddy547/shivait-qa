module Spree
  class Request < Spree::Base
    belongs_to :product
    belongs_to :user
  end
end
