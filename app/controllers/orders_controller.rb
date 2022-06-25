class OrdersController < ApplicationController

  before_action :authorize

  def new
  end

  def create
    order = Order.new(orders_params)
    order.apayable = order.gcvalue * 0.05
    order.uid = current_user.id
    order.delivery_status = 'Out for delivery'
    if order.save
      redirect_to '/orders'
    else
      redirect_to '/orders/new'
    end
  end

  def index
    @orders = Order.where(:uid => current_user.id)
    p @orders
  end
  private
  def orders_params
    params.require(:order).permit(:rfname, :rlname, :gcvalue, :phone, :address)
  end
end
