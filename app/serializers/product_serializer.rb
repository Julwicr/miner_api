class ProductSerializer < ActiveModel::Serializer
  belongs_to :product_category
  has_one :product_inventory
  attributes :name, :description, :price, :img_path, :article_number, :product_inventory

  def products
    object.products.order("product_category")
  end
end
