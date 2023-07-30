class Producte < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  validates :produt_name, presence: true
  validates :produt_description, presence: true
  validates :category_id, presence: true
  validates :commodity_condition_id, presence: true
  validates :shipping_cost_id, presence: true
  validates :prefecture_id, presence: true
  validates :estimated_shipping_date_id, presence: true
  validates :produt_image, presence: true
  validates :price, numericality:{ greater_than_or_equal_to: 333, less_than_or_equal_to: 9_999_999 }
  validates :price,format: { with: /\A[0-9]+\z/ }
end
