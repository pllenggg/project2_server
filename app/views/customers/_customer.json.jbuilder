json.extract! customer, :id, :user_id, :full_name, :profile_image, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
