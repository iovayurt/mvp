class Restaurant < ApplicationRecord
  RESTAURANTS = [ 'italian', 'japanese', 'chinese', 'belgian', 'french' ]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: RESTAURANTS }
  has_many :reviews, dependent: :destroy
end
