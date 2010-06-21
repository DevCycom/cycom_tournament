class CreateOrdersProducts < ActiveRecord::Migration
  def self.up
    create_table :orders_products, :id => false do |t|
      t.references :order
      t.references :product
      t.timestamps
    end
  end

  def self.down
    drop_table :orders_products
  end
end
