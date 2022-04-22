class CreateCategoriesFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_foods, :id => false do |t|
      t.integer :category_id
      t.integer :food_id
    end
  end
end
