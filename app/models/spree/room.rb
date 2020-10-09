module Spree
  class Room < Spree::Base

    has_many :room_messages, dependent: :destroy,
             inverse_of: :room
  end
end
