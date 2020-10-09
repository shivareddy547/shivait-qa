class CreateSpreeRooms < ActiveRecord::Migration[4.2]
  def up
    create_table :spree_rooms do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :spree_rooms
  end
end
