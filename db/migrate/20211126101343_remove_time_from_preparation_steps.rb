class RemoveTimeFromPreparationSteps < ActiveRecord::Migration[6.0]
  def change
    remove_column :preparation_steps, :time, :time
  end
end
