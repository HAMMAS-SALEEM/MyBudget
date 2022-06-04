class Entity < ApplicationRecord
  belongs_to :user
  has_many :group_entities, dependent: :destroy
  has_many :groups, through: :group_entities, dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true
  validates :user_id, presence: true
end
