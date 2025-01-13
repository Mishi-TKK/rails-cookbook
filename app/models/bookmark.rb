class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe, presence: true
  validates :category, presence: true
  validates :recipe_id, uniqueness: { scope: :category_id, message: "category combination must be unique" }
  validates :comment, length: { minimum: 6, message: "Must be at least 6 characters long"}
end
