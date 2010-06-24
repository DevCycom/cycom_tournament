class AddQuantityForArticlesInOrders < ActiveRecord::Migration
  def self.up
    add_column :orders_products, :quantity, :integer 
  end

  def self.down
    remove_column :orders_products, :quantity
  end
end
