class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.integer :category
      t.string :name
      t.integer :unit_category

      t.timestamps
    end
  end
end
