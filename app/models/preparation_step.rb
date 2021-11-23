class PreparationStep < ApplicationRecord
  has_many :ingredient_quantitys
  belongs_to :recipe
  enum action_verb: { peal: 0, cut: 1, mix: 2, cook: 3, serve: 4 }
end
