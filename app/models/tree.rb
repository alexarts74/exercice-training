class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions
  has_many :reviews, through: :adoptions
  validates :name, presence: true
  validates :address, presence: true
  validates :fruit_type, presence: true
  validates :price_per_year, presence: true
  validates :quantity_per_year, presence: true
  validates :description, presence: true
  validates :fruit_type, inclusion: { in: ["Apple", "Apricot", "Cherry", "Chestnut", "Coconut tree", "Fig", "Grapefruit", "Hazel", "Mandarin", "Mango", "Mirabellier", "Mulberry", "Olivier", "Orange", "Pear", "Plum"] }
  validates_length_of :description, minimum: 20, maximum: 280
  validates :quantity_per_year, numericality: { only_integer: true, greater_than: 0 }
  validates :price_per_year, numericality: { only_integer: true, greater_than: 0 }
end
