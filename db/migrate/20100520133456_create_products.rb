class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.decimal :price, :scale => 2
      t.integer :quantity
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
