class ProductInventory < ApplicationRecord
  validates :name, description, presence: true
end
