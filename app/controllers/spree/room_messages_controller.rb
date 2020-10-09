module Spree
    class RoomMessagesController < Spree::StoreController
      # def index
      #   @room_messages = Spree::RoomMessage.page(params[:page] || 1).per(50)
      # end



      before_action :load_entities

      def create
        if cookies.signed[:email].present?
          @user = Spree::User.find_by_email(cookies.permanent.signed[:email])
          if !params[:room_message][:room_id].present?
            @room = Spree::Room.find_by_name(cookies.permanent.signed[:email])
          else
            @room = Spree::Room.find(params[:room_message][:room_id])
          end
          @room_message = Spree::RoomMessage.create user: @user,
                                             room: @room,
                                             message: params.dig(:room_message, :message)
        end

        RoomChannel.broadcast_to @room, @room_message
      end

      protected

      def load_entities
        @room = Spree::Room.find params.dig(:room_message, :room_id)
      end

    end

end
