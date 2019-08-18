# frozen_string_literal: true

json.extract! category, :id, :title, :created_at, :updated_at, :image
json.url category_url(category, format: :json)
