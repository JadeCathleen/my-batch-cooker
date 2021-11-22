class RemoveCookingTimeFromRecipe < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :cooking_time, :time
  end
end
