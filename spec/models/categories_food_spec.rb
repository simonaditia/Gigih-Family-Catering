require 'rails_helper'

RSpec.describe CategoriesFood, type: :model do
  it 'is valid with a category_id and a food_id' do
    category_food = CategoriesFood.new(
      category_id: 1,
      food_id: 1
    )

    expect(category_food).to be_valid
  end
end
