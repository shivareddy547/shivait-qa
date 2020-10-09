module ApplicationCable
  class Channel < ActionCable::Channel::Base

    def connect
      # self.current_user = find_verified_user
    end

    def connect_user
      self.connect_user = Spree::User.find_by_email("spree@example.com")
    end

    private

    def find_verified_user
      if verified_user = Spree::User.find_by(id: cookies.signed[:email])
        verified_user
      else
        reject_unauthorized_connection
      end
    end

  end
end
