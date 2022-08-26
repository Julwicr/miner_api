class ProductCategory < ApplicationRecord
  validates :quantity, presence: true
end
