module Spree
    module UserDecorator
      require 'unread'
      def self.prepended(base)
        base.acts_as_reader
        base.has_and_belongs_to_many :products , :through => :requests
        base.has_many :requests

        base.has_many :room_messages,
                 dependent: :destroy

      end

      def self.reader_scope
        where(is_admin: true)
      end

      def gravatar_url

        # "http://shivait-ppr.herokuapp.com/assets/favicon-b0c44bbc73b93d5021365864f4c628c450388d8532aeb8852868e9c2a29c062a.png"
        if self.email=="spree@example.com"
          # gravatar_id = Digest::MD5::hexdigest(email).downcase
          # "https://gravatar.com/avatar/#{gravatar_id}.png"
          "/assets/favicon.png"
        else
          "/assets/user_icon.png"
          # "http://shivait-ppr.herokuapp.com/assets/favicon-b0c44bbc73b93d5021365864f4c628c450388d8532aeb8852868e9c2a29c062a.png"
        end
      end


    end
  end


::Spree::User.prepend(Spree::UserDecorator)