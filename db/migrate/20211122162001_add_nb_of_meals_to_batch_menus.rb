class AddNbOfMealsToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :nb_of_meals, :integer
  end
end
