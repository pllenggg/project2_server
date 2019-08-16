json.extract! service, :id, :category_id, :title, :description, :service_image, :price, :duration, :isPopular, :retail_id, :created_at, :updated_at
json.url service_url(service, format: :json)
