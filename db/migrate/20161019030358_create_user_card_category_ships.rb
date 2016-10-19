class CreateUserCardCategoryShips < ActiveRecord::Migration[5.0]
  def change
    create_table :user_card_category_ships do |t|
      t.integer :user_id
      t.integer :user_card_category_id

      t.timestamps
    end
  end
end
