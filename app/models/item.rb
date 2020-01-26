class Item < ApplicationRecord
  belongs_to :user
  has_one :transact, dependent: :destroy
end
