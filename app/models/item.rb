class Item < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  validates :title, length: { in: 1..80 }
  validates :price, length: { in: 1..10 }
  validates :details, presence: true

end
