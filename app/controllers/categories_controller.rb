class CategoriesController < ApplicationController

  def index
    @categories = ProductCategory.all

    render json: @categories, only: %i[name description]
  end
end
