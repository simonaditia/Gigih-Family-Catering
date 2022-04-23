require 'rails_helper'

RSpec.describe "order_details/new", type: :view do
  before(:each) do
    assign(:order_detail, OrderDetail.new(
      order_id: "MyString",
      food_id: "MyString",
      price: 1,
      quantity: 1
    ))
  end

  it "renders new order_detail form" do
    render

    assert_select "form[action=?][method=?]", order_details_path, "post" do

      assert_select "input[name=?]", "order_detail[order_id]"

      assert_select "input[name=?]", "order_detail[food_id]"

      assert_select "input[name=?]", "order_detail[price]"

      assert_select "input[name=?]", "order_detail[quantity]"
    end
  end
end
