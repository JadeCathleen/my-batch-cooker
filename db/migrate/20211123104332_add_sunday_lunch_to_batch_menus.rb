class AddSundayLunchToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :sunday_lunch, :boolean
  end
end
