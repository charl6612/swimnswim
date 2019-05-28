json.extract! pool, :id, :name, :address, :description, :price_per_day, :capacity, :picture, :user_id, :created_at, :updated_at
json.url pool_url(pool, format: :json)
