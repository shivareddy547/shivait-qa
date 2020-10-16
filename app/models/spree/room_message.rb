module Spree
  class RoomMessage < Spree::Base
    include ActionView::Helpers::DateHelper
    belongs_to :room, inverse_of: :room_messages
    acts_as_readable on: :created_at
    belongs_to :user
    after_create :send_message_to_admin

    def as_json(options)

      get_opposite_user = self.room.room_messages.map(&:user_id).select{|e| ![1,self.user.id].include?(e)}[0]
      super(options).merge(user_avatar_url: user.gravatar_url ,find_sender_or_receiver: self.find_sender_or_receiver,updated_at: "#{time_ago_in_words(self.created_at)} ago",unread_message_count: Spree::RoomMessage.unread_by(self.user).count > 0 ? (Spree::RoomMessage.unread_by(Spree::User.find(get_opposite_user)).count rescue "") : ""  )
    end

    def find_sender_or_receiver
      self.room.room_messages.first.user_id == self.user_id ? "msg-send" : "msg-receive"
    end

    def send_message_to_admin

      if self.user.email != "spree@example.com"
        RoomMessageMailer.with(message: self).send_chat_message.deliver_now
      end

    end

  end
end
