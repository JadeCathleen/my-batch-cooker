class AddFridayLunchToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :friday_lunch, :boolean
  end
end
