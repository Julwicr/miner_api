class ProductInventory < ApplicationRecord
  validates :quantity, presence: true
end
