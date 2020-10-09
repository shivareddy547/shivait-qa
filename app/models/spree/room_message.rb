module Spree
  class RoomMessage < Spree::Base
    include ActionView::Helpers::DateHelper
    belongs_to :room, inverse_of: :room_messages

    belongs_to :user

    def as_json(options)
      super(options).merge(user_avatar_url: user.gravatar_url ,find_sender_or_receiver: self.find_sender_or_receiver,updated_at: "#{time_ago_in_words(self.created_at)} ago" )
    end

    def find_sender_or_receiver
      self.room.room_messages.first.user_id == self.user_id ? "msg-send" : "msg-receive"
    end

  end
end
