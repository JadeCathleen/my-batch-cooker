class AddMondayLunchToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :monday_lunch, :boolean
  end
end
