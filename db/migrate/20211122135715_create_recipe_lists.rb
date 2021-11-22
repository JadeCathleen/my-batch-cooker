class CreateRecipeLists < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_lists do |t|
      t.references :batch_menu, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
