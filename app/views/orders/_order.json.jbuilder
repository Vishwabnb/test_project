json.extract! order, :id, :customer_id, :status, :subtotal, :item_discount, :tax, :total, :grand_total, :created_at, :updated_at
json.url order_url(order, format: :json)
