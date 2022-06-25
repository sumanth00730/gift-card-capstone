class AdminordersController < ApplicationController
  def index
    @adminorders = Order.all
  end

  def show
    @adminorder = Order.find(params[:id])
  end

  def create
  end

  def edit
    @adminorder = Order.find(params[:aid])
    p params[:id]
    @adminorder.delivery_status = "Delivered"
    p @adminorder
    if @adminorder.save
      redirect_to '/adminorders'
    end
  end
  private
  def adminorders_params
    params.require(:adminorders).permit(:rfname, :rlname, :gcvalue, :phone, :address)
  end
end
