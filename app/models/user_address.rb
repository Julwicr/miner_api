class UserAddress < ApplicationRecord
  belongs_to :user
  validates :address, :city, :postal_code, :country, :telephone, presence: true
end
