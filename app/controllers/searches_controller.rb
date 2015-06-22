class SearchesController < ApplicationController
  def index
    @products = Product.search(params[:search]).page(params[:page]).per(20)
  end
end
