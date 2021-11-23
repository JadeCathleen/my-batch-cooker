class AddThursdayLunchToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :thursday_lunch, :boolean
  end
end
