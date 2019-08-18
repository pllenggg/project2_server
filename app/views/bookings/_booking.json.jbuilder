json.extract! booking, :id, :user_id, :date, :retail_id, :service_id, :iscancel, :created_at, :updated_at, :booking_time
json.retail do
    json.extract! booking.retail, :retail_name, :retail_image, :address1, :address2, :suburb, :postcode, :phone
end
json.service do
    json.extract! booking.service, :title, :service_image, :price, :duration
end
json.customer do
    json.extract! booking.customer, :full_name, :phone
end
json.url booking_url(booking, format: :json)
