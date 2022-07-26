json.extract! user, :id, :name, :email, :phone, :address, :aadhar,:role :created_at, :updated_at
json.url user_url(user, format: :json)
