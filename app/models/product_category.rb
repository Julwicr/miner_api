class ProductCategory < ApplicationRecord
  validates :name, :description, presence: true
end
