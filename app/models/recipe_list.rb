class RecipeList < ApplicationRecord
  belongs_to :batch_menu
  belongs_to :recipe
end
