class FoodsController < ApplicationController
  before_filter :ensure_user_is_logged
  before_filter :set_current_order
  
  private
  def set_current_order
    @current_order ||= Order.new
  end
  
  def ensure_user_is_logged
    if !logged_in?
      flash[:error] = t "session.must_connect"
      redirect_to root_url
    end
  end
  
  public
  def index
  end
end
