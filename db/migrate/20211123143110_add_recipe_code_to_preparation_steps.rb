class AddRecipeCodeToPreparationSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :preparation_steps, :recipe_code, :integer
  end
end
