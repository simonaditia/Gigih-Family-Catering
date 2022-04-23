require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      customer_id: "Customer",
      order_date: "Order Date",
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Customer/)
    expect(rendered).to match(/Order Date/)
    expect(rendered).to match(/Status/)
  end
end
