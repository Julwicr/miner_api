class ProductsController < ApplicationController
  before_action :set_product, only: :show

  def index
    @products = Product.all

    render json: @products
  end
end
