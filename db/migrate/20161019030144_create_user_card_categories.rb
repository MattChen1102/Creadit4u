class CreateUserCardCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_card_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
