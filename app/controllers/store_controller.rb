class StoreController < ApplicationController
  def index
    @products = Product.order(created_at: :desc).page(params[:page]).per(50)
  end
end
