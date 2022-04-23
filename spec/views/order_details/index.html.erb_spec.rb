require 'rails_helper'

RSpec.describe "order_details/index", type: :view do
  before(:each) do
    assign(:order_details, [
      OrderDetail.create!(
        order_id: "Order",
        food_id: "Menu",
        price: 2,
        quantity: 3
      ),
      OrderDetail.create!(
        order_id: "Order",
        food_id: "Menu",
        price: 2,
        quantity: 3
      )
    ])
  end

  it "renders a list of order_details" do
    render
    assert_select "tr>td", text: "Order".to_s, count: 2
    assert_select "tr>td", text: "Menu".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
