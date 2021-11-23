class AddWednesdayDinnerToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :wednesday_dinner, :boolean
  end
end
