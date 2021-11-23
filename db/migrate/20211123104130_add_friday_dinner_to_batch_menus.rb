class AddFridayDinnerToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :friday_dinner, :boolean
  end
end
