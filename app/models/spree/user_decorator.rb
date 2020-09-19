module Spree
    module UserDecorator
      def self.prepended(base)
        base.has_and_belongs_to_many :products , :through => :requests
        base.has_many :requests

      end


    end
  end


::Spree::User.prepend(Spree::UserDecorator)