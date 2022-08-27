class ProductInventory < ApplicationRecord
  has_many :products
  validates :quantity, presence: true
end
