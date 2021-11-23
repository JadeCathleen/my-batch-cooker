class AddMondayDinnerToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :monday_dinner, :boolean
  end
end
