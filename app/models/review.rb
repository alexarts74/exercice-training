class Review < ApplicationRecord
  belongs_to :user
  belongs_to :adoption
  validates :rating, presence: true
  validates_inclusion_of :rating, :in => 0..5
  validates :content, presence: true
  validates_length_of :content, minimum: 3, maximum: 114, allow_blank: true
end
