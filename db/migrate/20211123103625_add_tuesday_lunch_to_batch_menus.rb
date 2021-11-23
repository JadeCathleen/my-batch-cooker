class AddTuesdayLunchToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :tuesday_lunch, :boolean
  end
end
