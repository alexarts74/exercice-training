class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  has_many :reviews
  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
