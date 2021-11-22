class CreateIngredientQuantities < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_quantities do |t|
      t.integer :quantity
      t.references :ingredient, null: false, foreign_key: true
      t.references :preparation_step, null: false, foreign_key: true

      t.timestamps
    end
  end
end
