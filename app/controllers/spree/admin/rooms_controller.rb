module Spree
  module Admin
    class RoomsController < ResourceController
      # def index
      #   @rooms = Spree::Room.page(params[:page] || 1).per(50)
      # end

      # Loads:
      # @rooms = all rooms
      # @room = current room when applicable
      before_action :load_entities

      def index
        @rooms = Spree::Room.page(params[:page] || 1).per(50)
      end

      def new
        @room = Spree::Room.new
      end

      def create
        @room = Spree::Room.new permitted_parameters

        if @room.save
          flash[:success] = "Room #{@room.name} was created successfully"
          redirect_to rooms_path
        else
          render :new
        end
      end

      def show
        @room_message = Spree::RoomMessage.new room: @room
        @room_messages = @room.room_messages.includes(:user)
      end

      def edit
      end

      def update
        if @room.update_attributes(permitted_parameters)
          flash[:success] = "Room #{@room.name} was updated successfully"
          redirect_to rooms_path
        else
          render :new
        end
      end

      protected

      def load_entities
        @rooms = Room.all
        @room = Room.find(params[:id]) if params[:id]
      end

      def permitted_parameters
        params.require(:room).permit(:name)
      end




    end
  end
end
