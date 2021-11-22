class BatchMenu < ApplicationRecord
  has_many :recipes, through: :recipes_lists
end
