class Entity < ApplicationRecord
  belongs_to :user
  has_many :group_entities, dependent: :destroy
  has_many :groups, through: :group_entities, dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 999,999,999 }
  validates :user_id, presence: true
end
