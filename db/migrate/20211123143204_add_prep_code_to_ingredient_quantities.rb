class AddPrepCodeToIngredientQuantities < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredient_quantities, :prep_code, :integer
  end
end
