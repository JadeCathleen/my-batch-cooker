class IngredientQty < ApplicationRecord
  belongs_to :ingredient
  belongs_to :preparation_step
end
