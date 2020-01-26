class Transaction < ApplicationRecord
  belongs_to :item
  belongs_to :buyer,  class_name: 'User', foreign_key: 'buyer_id'
  belongs_to :seller, class_name: 'User', foreign_key: 'seller_id', optional:true

  # バリデーション
  validates :item,  presence: true
  validates :buyer, presence: true
end
