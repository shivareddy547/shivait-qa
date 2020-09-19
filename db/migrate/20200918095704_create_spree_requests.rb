class CreateSpreeRequests < ActiveRecord::Migration[4.2]
  def up
    create_table :spree_requests do |t|
      t.string :stexampleatus
      t.integer :product_id,index: true
      t.integer :user_id,index: true
      t.timestamps
    end
  end

  def down
    drop_table :spree_requests
  end
end
