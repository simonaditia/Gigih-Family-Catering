require 'rails_helper'

RSpec.describe "order_details/show", type: :view do
  before(:each) do
    @order_detail = assign(:order_detail, OrderDetail.create!(
      order_id: "Order",
      food_id: "Menu",
      price: 2,
      quantity: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Order/)
    expect(rendered).to match(/Menu/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
