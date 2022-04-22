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

  it 'is invalid when price is below 0.01' do
    food = Food.new(
      name: 'Nasi Uduk',
      price: 0,
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious!'
    )

    food.valid?
    expect(food.errors[:price]).to include("must be greater than or equal to 0.01")
  end

  it 'is invalid when description is more than 150 characters' do
    food = Food.new(
      name: 'Nasi Uduk',
      price: 15000.0,
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious! For certain rituals or ceremonies, uduk is usually served with traditional Javanese dishes like kering tempe, urap, and sambel goreng. Humble protein sources, such as, a hard boiled egg, fried tempeh, or fried tofu, can also be included in the package. In todays slametan, modern Indonesian food dish, such as sliced fried egg, telur bumbu Bali, or rendang, may also be included. Some people may also add mie goreng or vermicelli into the dish. Krupuk, rempeyek, or emping can also be added. Each neighbourhood in Jakarta has its own variant of the dish, the most notable being Nasi uduk Slipi from West Jakarta. Kebon Kacang area near Tanah Abang in Central Jakarta is renowned for its nasi uduk. Nasi uduk is a popular dish for the busy commuters in Jakarta, mainly because it is affordable. It can be found throughout the day; some roadside stalls open exclusively in the morning, noon, or night, depending on the demographics of the surrounding area. Stalls near residential areas, marketplaces, train stations, and schools are usually open from morning to noon, while the ones near offices and street-side are usually open afternoon to midnight.'
    )

    food.valid?

    expect(food.errors[:description]).to include("is too long (maximum is 150 characters)")
  end
end
