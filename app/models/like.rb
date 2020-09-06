class Like < ApplicationRecord
  belongs_to :shop
  belongs_to :user
  validates_uniqueness_of :shop_id, scope: :user_id
end
