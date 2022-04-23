FactoryBot.define do
  factory :order_detail do
    order_id { "MyString" }
    menu_id { "MyString" }
    price { 1 }
    quantity { 1 }
  end
end
