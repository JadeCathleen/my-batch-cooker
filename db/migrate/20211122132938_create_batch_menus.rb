class CreateBatchMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :batch_menus do |t|
      t.string :name
      t.integer :nb_of_people
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
