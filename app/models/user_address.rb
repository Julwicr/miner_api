class UserAddress < ApplicationRecord
  belongs_to :user
  validates :address, :city, :postal_code, :country, presence: true
end
