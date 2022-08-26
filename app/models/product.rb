class Product < ApplicationRecord
  has_one :product_category
  has_one :product_inventory
  validates :name, :description, :price, :img_path, :article_number, presence: true
  validates :article_number, uniqueness: true
end
