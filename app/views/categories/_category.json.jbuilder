json.extract! category, :id, :name, :price, :stock, :created_at, :updated_at
json.url category_url(category, format: :json)
