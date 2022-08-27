class ProductCategoriesController < ApplicationController

  def index
    @categories = ProductCategory.all.to_a
    categories_list = []

    @categories.each do |cat|
      category = {}
      category[:name] = cat.name
      category[:description] = cat.description
      categories_list << category
    end

    render json: categories_list
  end

  def show
    @categories = ProductCategory.find_by(name: params[:name])

    render json: @categories
  end
end
