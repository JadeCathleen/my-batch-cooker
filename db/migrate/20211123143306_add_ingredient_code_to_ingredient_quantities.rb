class AddIngredientCodeToIngredientQuantities < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredient_quantities, :ingredient_code, :integer
  end
end
