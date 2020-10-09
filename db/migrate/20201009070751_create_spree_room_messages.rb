class CreateSpreeRoomMessages < ActiveRecord::Migration[4.2]
  def up
    create_table :spree_room_messages do |t|
      t.references :room
      t.references :user
      t.text :message
      t.timestamps
    end
  end

  def down
    drop_table :spree_room_messages
  end
end
