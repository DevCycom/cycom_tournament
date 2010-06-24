class Product < ActiveRecord::Base
  ATTACHMENT_TYPES = ['image/jpeg', 'image/png']
  validates_presence_of :name, :price, :quantity, :description
  
  has_attached_file :photo, :styles => { :small => "150x150>", :thumb => "100x100>" },
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
                    
  validates_attachment_presence :photo
  validates_attachment_content_type :photo, :content_type => ATTACHMENT_TYPES
end
