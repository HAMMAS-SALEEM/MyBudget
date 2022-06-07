class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :categories, dependent: :destroy
  has_many :transactions, dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }
end
