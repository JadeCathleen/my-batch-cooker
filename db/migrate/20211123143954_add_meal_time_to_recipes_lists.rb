class AddMealTimeToRecipesLists < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes_lists, :meal_time, :string
  end
end
