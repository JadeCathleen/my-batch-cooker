class AddSaturdayDinnerToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :saturday_dinner, :boolean
  end
end
