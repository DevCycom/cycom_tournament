class FoodsController < ApplicationController
  before_filter :ensure_user_is_logged
  before_filter :set_current_order
  
  private
  def set_current_order
    session[:current_order] ||= Order.new
    @current_order = session[:current_order]
  end
  
  def ensure_user_is_logged
    if !logged_in?
      flash[:error] = t "session.must_connect"
      redirect_to root_url
    end
  end
  
  public
  def index
    @products = Product.all.find_all{ |p| !p.photo.nil?}
  end
  
  def add_to_cart
    @product = Product.find(params[:id])
    @current_order.add(@product) 
  end
  
  def delete_from_cart
    @product = Product.find(params[:id])
    @current_order.delete_all(@product) 
  end
  
  def remove_from_cart
    @product = Product.find(params[:id])
    @current_order.remove(@product) 
  end
end
