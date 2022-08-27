class ProductInventorySerializer < ActiveModel::Serializer
  attributes :quantity, :updated_at
  has_one :product
end
