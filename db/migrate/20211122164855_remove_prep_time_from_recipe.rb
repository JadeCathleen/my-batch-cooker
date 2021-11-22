class RemovePrepTimeFromRecipe < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :prep_time, :time
  end
end
