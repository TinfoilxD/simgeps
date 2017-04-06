json.extract! practitioner, :id, :name, :company, :title, :won, :present, :created_at, :updated_at
json.url practitioner_url(practitioner, format: :json)
