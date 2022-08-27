class Product < ApplicationRecord
  belongs_to :product_category
  belongs_to :product_inventory
  validates :name, :description, :price, :img_path, :article_number, presence: true
  validates :article_number, uniqueness: true
end
