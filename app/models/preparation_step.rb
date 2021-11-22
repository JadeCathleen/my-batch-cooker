class PreparationStep < ApplicationRecord
  has_many :ingredient_qtys
  belongs_to :recipe
  enum action_verb: { peel: 0, cut: 1, mix: 2, cook: 3, serve: 4 }
end
