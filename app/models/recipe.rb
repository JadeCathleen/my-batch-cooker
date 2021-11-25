class Recipe < ApplicationRecord
  has_many :preparation_steps
  has_many :recipes_lists
  has_many :ingredient_quantities, through: :preparation_steps
  has_one_attached :photo
  validates :name, length: { maximum: 100,
  too_long: "%{count} characters is the maximum allowed" }
  validates :description, length: { maximum: 500,
  too_long: "%{count} characters is the maximum allowed" }

  def prep_time
    preparation_steps.where.not(action_verb: :cook).pluck(:time).sum
  end

  def cook_time
    preparation_steps.where(action_verb: :cook).pluck(:time).sum
  end

end
