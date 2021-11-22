class PreparationStep < ApplicationRecord
  has_many :ingredient_qtys
  belongs_to :recipe
end
