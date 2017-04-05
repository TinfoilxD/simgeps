json.extract! sponsor, :id, :name, :prizes, :has_won, :created_at, :updated_at
json.url sponsor_url(sponsor, format: :json)
