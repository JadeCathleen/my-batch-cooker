class AddSaturdayLunchToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :saturday_lunch, :boolean
  end
end
