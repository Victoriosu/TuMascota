json.extract! pet, :id, :description, :address, :longitude, :latitude, :created_at, :updated_at
json.url pet_url(pet, format: :json)
