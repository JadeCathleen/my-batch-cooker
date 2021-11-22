class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.time :prep_time
      t.time :cooking_time

      t.timestamps
    end
  end
end
