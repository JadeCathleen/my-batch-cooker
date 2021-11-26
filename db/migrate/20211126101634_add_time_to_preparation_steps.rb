class AddTimeToPreparationSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :preparation_steps, :time, :integer
  end
end
