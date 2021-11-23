class AddSundayDinnerToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :sunday_dinner, :boolean
  end
end
