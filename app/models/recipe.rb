class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks

  validates :description, presence: true, uniqueness: true
  validates :rating, numericality: { in: 0..10 }
end
