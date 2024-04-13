json.extract! payment, :id, :amount, :date, :order_id, :status, :method, :created_at, :updated_at
json.url payment_url(payment, format: :json)
