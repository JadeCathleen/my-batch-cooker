class AddRecipeCodeToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :recipe_code, :integer
  end
end
