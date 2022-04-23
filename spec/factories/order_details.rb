FactoryBot.define do
  factory :order_detail do
    order_id { 1 }
    food_id { 1 }
    price { 10000 }
    quantity { 5 }
  end

  factory :invalid_order_detail, parent: :order_detail do
    order_id { nil }
    food_id { nil }
    price { "hello" }
    quantity { nil }
  end
end
