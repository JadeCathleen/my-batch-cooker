class RemoveNbOfMealsFromBatchMenus < ActiveRecord::Migration[6.0]
  def change
    remove_column :batch_menus, :nb_of_meals, :integer
  end
end
