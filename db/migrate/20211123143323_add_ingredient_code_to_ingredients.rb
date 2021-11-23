class AddIngredientCodeToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :ingredient_code, :integer
  end
end
