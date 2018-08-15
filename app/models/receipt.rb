class Receipt < ApplicationRecord
  belongs_to :user
  has_one :cart

  validates :payment_code, presence: true
end
