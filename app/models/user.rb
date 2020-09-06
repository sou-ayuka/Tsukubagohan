class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :shops, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_shops, through: :likes, source: :shop
  def already_liked?(shop)
    self.likes.exists?(shop_id: shop.id)
  end
  has_many :comments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
#:trackableがない
end
