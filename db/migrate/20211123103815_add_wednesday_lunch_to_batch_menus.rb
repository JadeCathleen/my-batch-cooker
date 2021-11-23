class AddWednesdayLunchToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :wednesday_lunch, :boolean
  end
end
