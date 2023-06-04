json.extract! car_detail, :id, :year, :make, :model, :trim, :mileage, :fuel_type, :color, :vehicle_condition, :title_status, :zip_code, :created_at, :updated_at
json.url car_detail_url(car_detail, format: :json)
