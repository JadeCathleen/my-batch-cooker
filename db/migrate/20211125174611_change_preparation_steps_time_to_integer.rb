class ChangePreparationStepsTimeToInteger < ActiveRecord::Migration[6.0]

  PreparationStep.all.each do |step|
    step.update_column(:time, nil)
  end

  def change
    change_column :preparation_steps, :time, :integer, default: 0
  end
end
