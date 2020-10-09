class RoomChannel < ApplicationCable::Channel
  def subscribed
    room = Spree::Room.find params[:room]
    stream_for room
  end
end
