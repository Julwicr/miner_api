class ProductsController < ApplicationController
  def index
    @products = Product.all

    render json: @products
  end

  def show
    @product = Product.find_by(article_number: params[:id])

    render json: @product
  end

  def price
    if params[:max] && params[:min]
      @products = Product.where("price < #{params[:min]} and price < #{params[:max]}")
    elsif params[:max]
      @products = Product.where("price < #{params[:max]}")
    end

    render json: @products
  end
end
