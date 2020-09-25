module Spree
  module AddressDecorator
    ADDRESS_FIELDS = %w(firstname lastname company address1 address2 city country state zipcode  phone)
    def self.prepended(base)
      # base.has_many :new_custom_model

      def self.address_fields

        %w(firstname lastname company address1 address2 city country state zipcode  phone)
      end

    end

    def address_fields

      %w(firstname lastname company address1 address2 city country state zipcode  phone)
    end


    # ADDRESS_FIELDS = %w(firstname lastname company address1 address2 city country state zipcode  phone)

  end
end


::Spree::Address.prepend(Spree::AddressDecorator)
# Spree::Address.prepend Spree::AddressDecorator if ::Spree::Address.included_modules.exclude?(Spree::AddressDecorator)