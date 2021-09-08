class Review < ApplicationRecord
  validates :content, presence: true
  belongs_to :restaurant
  validates :rating, presence: true
  validates_numericality_of :rating, greater_than_or_equal_to: 0
  validates_numericality_of :rating, less_than_or_equal_to: 5
end
