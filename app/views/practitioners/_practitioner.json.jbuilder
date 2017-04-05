json.extract! practitioner, :id, :name, :company, :title, :has_won, :created_at, :updated_at
json.url practitioner_url(practitioner, format: :json)
