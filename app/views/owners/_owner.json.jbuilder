json.extract! owner, :id, :name, :email, :phone, :age, :dob, :address, :created_at, :updated_at
json.url owner_url(owner, format: :json)
