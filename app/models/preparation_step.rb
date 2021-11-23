class PreparationStep < ApplicationRecord
  has_many :ingredient_quantities
  belongs_to :recipe
  enum action_verb: { pre_heat: 1, prepare: 2, cut: 3, mix: 4, pre_cook: 5, cook: 6, serve: 7 }
end
