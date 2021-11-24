class BatchMenu < ApplicationRecord
  has_many :recipes_lists
  has_many :recipes, through: :recipes_lists
  validates :name, length: { maximum: 60,
  too_long: "%{count} characters is the maximum allowed" }
  validates :nb_of_people, numericality: { less_than: 5 }
end
