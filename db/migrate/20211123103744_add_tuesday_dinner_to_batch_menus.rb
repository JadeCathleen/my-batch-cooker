class AddTuesdayDinnerToBatchMenus < ActiveRecord::Migration[6.0]
  def change
    add_column :batch_menus, :tuesday_dinner, :boolean
  end
end
