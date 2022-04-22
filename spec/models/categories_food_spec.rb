require 'rails_helper'

RSpec.describe CategoriesFood, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:categories_food)).to be_valid
  end

  it 'is valid with a category_id and a food_id' do
    expect(FactoryBot.build(:categories_food)).to be_valid
  end
end
