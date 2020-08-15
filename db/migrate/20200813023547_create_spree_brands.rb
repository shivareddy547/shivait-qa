class CreateSpreeBrands < ActiveRecord::Migration[4.2]
  def up
    create_table :spree_brands do |t|
      t.string :name
      t.text :description
      t.integer :position
      t.timestamps
    end
  end

  def down
    drop_table :spree_brands
  end
end
