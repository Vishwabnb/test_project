json.extract! customer, :id, :name, :contact_no, :address, :city, :email, :shop_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
