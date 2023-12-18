class CreateShoppingLists < ActiveRecord::Migration[7.1]
  def change
    create_table :shopping_lists do |t|
      t.string :title, limit: 200

      t.timestamps
    end
  end
end
