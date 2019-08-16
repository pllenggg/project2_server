json.extract! booking, :id, :user_id, :date, :retail_id, :service_id, :iscancel, :created_at, :updated_at
json.url booking_url(booking, format: :json)
