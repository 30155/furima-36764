class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :user
  has_one :order
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_fee
  belongs_to :prefecture
  belongs_to :days_to_ship

  validates :image, :item_name, :explanation, :price, presence: true
  validates :price, format: { with: /\A[0-9]+\z/, message: 'is invalid. Input half-width characters.' }
  validates :price,
            numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: 'is out of setting range' }
  validates :category_id, :condition_id, :delivery_fee_id, :prefecture_id, :days_to_ship_id,
            numericality: { other_than: 0, message: "can't be blank" }
end
