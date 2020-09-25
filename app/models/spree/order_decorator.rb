module Spree
  module OrderDecorator
    def self.prepended(base)
      base.remove_checkout_step :delivery
      base.remove_checkout_step :address

    end
  end
end
::Spree::Order.prepend(Spree::OrderDecorator)