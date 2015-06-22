class OrdersController < ApplicationController
  def new
    @products = Product.where(id: session[:cart])
    @order = Order.new(products: @products)
  end

  def create
    return if session[:cart].nil?
    @order = Order.create(order_params)
    if @order.save
      flash[:success] = t('order.created')
      session[:cart] = nil
      redirect_to store_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
