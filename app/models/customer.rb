class Customer < ApplicationRecord
  has_many :transactions 
  validates :first_name, presence: true, length: { maximum: 255}
  validates :last_name, presence: true, length: { maximum: 255}
end
