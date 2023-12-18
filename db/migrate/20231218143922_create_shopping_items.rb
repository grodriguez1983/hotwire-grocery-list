class CreateShoppingItems < ActiveRecord::Migration[7.1]
  def change
    create_table :shopping_items do |t|
      t.string :title, limit: 200
      t.boolean :bought
      t.references :shopping_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
