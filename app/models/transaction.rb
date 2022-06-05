class Transaction < ApplicationRecord
  belongs_to :user
  has_many :category_transactions, dependent: :destroy
  has_many :categories, through: :category_transactions, dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 999_999_999 }
  validates :user_id, presence: true
end
