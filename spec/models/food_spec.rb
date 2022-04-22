require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'is valid with a name and a description' do
    food = Food.new(
      name: 'Nasi Uduk',
      price: 15000.0,
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious!'
    )

    expect(food).to be_valid
  end

  it 'is invalid without a name' do
    food = Food.new(
      name: nil,
      price: 15000.0,
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious!'
    )

    food.valid?

    expect(food.errors[:name]).to include("can't be blank")
  end

  it "is invalid with a duplicate name" do
    food1 = Food.create(
      name: "Nasi Uduk",
      price: 15000.0,
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious!'
    )

    food2 = Food.new(
      name: "Nasi Uduk",
      price: 17000.0,
      description: "Different description"
    )

    food2.valid?

    expect(food2.errors[:name]).to include("has already been taken")
  end

  it 'is invalid when price is not numeric' do
    food = Food.new(
      name: 'Nasi Uduk',
      price: 'Halo',
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious!'
    )

    food.valid?
    
    expect(food.errors[:price]).to include("is not a number")
  end
end
