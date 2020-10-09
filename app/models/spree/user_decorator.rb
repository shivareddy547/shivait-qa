module Spree
    module UserDecorator
      def self.prepended(base)
        base.has_and_belongs_to_many :products , :through => :requests
        base.has_many :requests

        base.has_many :room_messages,
                 dependent: :destroy

      end

      def gravatar_url
        if self.email=="spree@example.com"
          gravatar_id = Digest::MD5::hexdigest(email).downcase
          "https://gravatar.com/avatar/#{gravatar_id}.png"
        else
          "http://shivait-ppr.herokuapp.com/assets/favicon-b0c44bbc73b93d5021365864f4c628c450388d8532aeb8852868e9c2a29c062a.png"
        end
      end


    end
  end


::Spree::User.prepend(Spree::UserDecorator)