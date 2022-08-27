class ProductCategoriesController < ApplicationController

  def index
    @categories = ProductCategory.all

    render json: @categories
  end
end
