class CreatePreparationSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :preparation_steps do |t|
      t.string :content
      t.integer :action_verb, index: true, default: 0
      t.integer :time
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
