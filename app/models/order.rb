class Order < ActiveRecord::Base
  has_and_belongs_to_many :articles, :class_name => "Product"
end
