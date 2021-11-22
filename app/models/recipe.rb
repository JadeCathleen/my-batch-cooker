class Recipe < ApplicationRecord
  has_many :preparation_steps
  has_many :recipes_lists
  validates :name, length: { maximum: 100,
    too_long: "%{count} characters is the maximum allowed" }
  validates :description, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
end
