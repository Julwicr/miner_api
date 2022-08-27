class User < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email invalid"  },
                    uniqueness: { case_sensitive: false },
                    length: { minimum: 4, maximum: 250 }
  validates :username, uniqueness: { case_sensitive: true },
                       length: { minimum: 4, maximum: 30 }
  validates :password, length: { minimum: 8 }
  has_one :user_address, dependent: :destroy
end
