class AddPrepCodeToPreparationSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :preparation_steps, :prep_code, :integer
  end
end
