json.extract! order_detail, :id, :order_id, :food_id, :price, :quantity, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
