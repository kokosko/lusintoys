class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def show_products_from_category_and_parents
    Product.products.group_by(&:category_id)
  end
end
