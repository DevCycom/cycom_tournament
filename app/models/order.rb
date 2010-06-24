class Order < ActiveRecord::Base
  has_many :articles, :class_name => "OrdersProduct"
  has_many :foods, :source => :product, :through => :articles
  
  def add(product)
    self.articles.build(:product => product) if self.articles.detect{ |a| a.product == product }.nil?
    self.articles.collect{ |a| a.quantity += 1 if a.product == product }
  end
  
  def remove(product)
    self.articles.collect!{ |a| a.quantity -= 1 if a.product == product }
    self.articles.delete_if{|a| a.quantity == 0}
  end
  
  def delete_all(product)
    self.articles.delete_if{|a| a.product == product}
  end
end
