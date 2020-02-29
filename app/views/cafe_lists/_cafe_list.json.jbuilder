json.extract! cafe_list, :id, :title, :bean, :location, :location_url, :created_at, :updated_at
json.url cafe_list_url(cafe_list, format: :json)
